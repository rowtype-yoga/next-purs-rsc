module Test.Loader where

import Prelude

import Data.Foldable (for_)
import Data.Maybe (Maybe(..))
import Data.Tuple.Nested ((/\))
import Loader.Main (Segment(..), detectDirective, extractJsonField, extractModuleName, extractPageType, generateTsx, hasMetadataDecl, hasStaticParamsDecl, kindToDeclName, kindToFileName, moduleToRoute, segmentsToNextPath)
import Loader.Plugin as Plugin
import Test.Golden (goldenTest)
import Test.Spec (Spec, describe, it)
import Test.Spec.Assertions (shouldEqual)

spec :: Spec Unit
spec = do

  describe "detectDirective" do
    it "comment @client" do
      detectDirective "Foo" "module Foo where\n-- @client\nimport Prelude" `shouldEqual` Just "use client"
    it "comment @server" do
      detectDirective "Foo" "module Foo where\n-- @server\nimport Prelude" `shouldEqual` Just "use server"
    it "convention .Client suffix" do
      detectDirective "Page.Home.Client" "" `shouldEqual` Just "use client"
    it "convention .Server suffix" do
      detectDirective "Page.Home.Server" "" `shouldEqual` Just "use server"
    it "convention Actions. prefix" do
      detectDirective "Actions.Login" "" `shouldEqual` Just "use server"
    it "no directive" do
      detectDirective "Page.Home" "module Page.Home where\nimport Prelude" `shouldEqual` Nothing

  describe "extractModuleName" do
    it "simple module" do
      extractModuleName "module Foo.Bar where\n" `shouldEqual` Just "Foo.Bar"
    it "module with exports" do
      extractModuleName "module Foo.Bar (baz) where\n" `shouldEqual` Just "Foo.Bar"
    it "no module declaration" do
      extractModuleName "just some random text" `shouldEqual` Nothing

  describe "segmentsToNextPath" do
    it "static" do
      segmentsToNextPath [ Static "blog" ] `shouldEqual` [ "blog" ]
    it "dynamic" do
      segmentsToNextPath [ Dynamic "slug" ] `shouldEqual` [ "[slug]" ]
    it "catch-all" do
      segmentsToNextPath [ CatchAll "slug" ] `shouldEqual` [ "[...slug]" ]
    it "optional catch-all" do
      segmentsToNextPath [ OptCatchAll "slug" ] `shouldEqual` [ "[[...slug]]" ]
    it "mixed segments" do
      segmentsToNextPath [ Static "blog", Dynamic "id" ] `shouldEqual` [ "blog", "[id]" ]

  describe "kindToFileName" do
    it "notFound" do kindToFileName "notFound" `shouldEqual` "not-found"
    it "globalError" do kindToFileName "globalError" `shouldEqual` "global-error"
    it "page" do kindToFileName "page" `shouldEqual` "page"
    it "layout" do kindToFileName "layout" `shouldEqual` "layout"
    it "template" do kindToFileName "template" `shouldEqual` "template"
    it "error" do kindToFileName "error" `shouldEqual` "error"
    it "loading" do kindToFileName "loading" `shouldEqual` "loading"

  describe "kindToDeclName" do
    it "error" do kindToDeclName "error" `shouldEqual` "error"
    it "globalError" do kindToDeclName "globalError" `shouldEqual` "globalError"
    it "page" do kindToDeclName "page" `shouldEqual` "page"
    it "layout" do kindToDeclName "layout" `shouldEqual` "layout"
    it "template" do kindToDeclName "template" `shouldEqual` "template"
    it "notFound" do kindToDeclName "notFound" `shouldEqual` "notFound"

  describe "generateTsx" do
    let golden = goldenTest { goldenDir: "loader/test/golden", diffDir: "loader/test/diffs" }
    for_ goldenCases \(name /\ actual) ->
      golden name actual

  describe "hasMetadataDecl" do
    it "detects metadata signature" do
      hasMetadataDecl "module Foo where\nmetadata :: Metadata (\"blog\" / \"slug\" : String)\nmetadata = simpleMetadata \\_ -> {}" `shouldEqual` true
    it "false when no metadata signature" do
      hasMetadataDecl "module Foo where\npage :: Page (\"about\")\npage = simplePage \\_ -> mempty" `shouldEqual` false
    it "false when metadata is a value binding without signature" do
      hasMetadataDecl "module Foo where\nmetadata = simpleMetadata \\_ -> {}" `shouldEqual` false
    it "false on parse failure" do
      hasMetadataDecl "not valid purescript {{{}}" `shouldEqual` false

  describe "hasStaticParamsDecl" do
    it "detects staticParams signature" do
      hasStaticParamsDecl "module Foo where\nstaticParams :: StaticParams (\"blog\" / \"slug\" : String)\nstaticParams = simpleStaticParams $ pure []" `shouldEqual` true
    it "false when no staticParams signature" do
      hasStaticParamsDecl "module Foo where\npage :: Page (\"about\")\npage = simplePage \\_ -> mempty" `shouldEqual` false
    it "false when staticParams is a value binding without signature" do
      hasStaticParamsDecl "module Foo where\nstaticParams = pure []" `shouldEqual` false

  describe "extractPageType" do
    it "static segment" do
      extractPageType "page" "module Foo where\npage :: Page \"about\"" `shouldEqual` Just [ Static "about" ]
    it "dynamic segment" do
      extractPageType "page" "module Foo where\npage :: Page (\"slug\" : String)" `shouldEqual` Just [ Dynamic "slug" ]
    it "nested static segments" do
      extractPageType "page" "module Foo where\npage :: Page (\"blog\" / \"posts\")" `shouldEqual` Just [ Static "blog", Static "posts" ]
    it "mixed static and dynamic" do
      extractPageType "page" "module Foo where\npage :: Page (\"blog\" / \"slug\" : String)" `shouldEqual` Just [ Static "blog", Dynamic "slug" ]
    it "Root" do
      extractPageType "page" "module Foo where\npage :: Page Root" `shouldEqual` Just []
    it "Layout has no type arg" do
      extractPageType "layout" "module Foo where\nlayout :: Layout" `shouldEqual` Just []
    it "catch-all segment" do
      extractPageType "page" "module Foo where\npage :: Page (\"docs\" / \"path\" :.. String)" `shouldEqual` Just [ Static "docs", CatchAll "path" ]
    it "optional catch-all segment" do
      extractPageType "page" "module Foo where\npage :: Page (\"docs\" / \"path\" :..? String)" `shouldEqual` Just [ Static "docs", OptCatchAll "path" ]
    it "query params are ignored for segments" do
      extractPageType "page" "module Foo where\npage :: Page (\"dashboard\" :? { name :: String })" `shouldEqual` Just [ Static "dashboard" ]
    it "Nothing for non-matching decl" do
      extractPageType "page" "module Foo where\nother :: String" `shouldEqual` Nothing
    it "Loading type" do
      extractPageType "loading" "module Foo where\nloading :: Loading (\"dashboard\")" `shouldEqual` Just [ Static "dashboard" ]
    it "ErrorBoundary type" do
      extractPageType "error" "module Foo where\nerror :: ErrorBoundary Root" `shouldEqual` Just []
    it "NotFound type" do
      extractPageType "notFound" "module Foo where\nnotFound :: NotFound Root" `shouldEqual` Just []
    it "Template type" do
      extractPageType "template" "module Foo where\ntemplate :: Template (\"dashboard\")" `shouldEqual` Just [ Static "dashboard" ]
    it "GlobalError type" do
      extractPageType "globalError" "module Foo where\nglobalError :: GlobalError Root" `shouldEqual` Just []

  describe "extractJsonField" do
    it "extracts field with space after colon" do
      extractJsonField "modulePath" "{\"modulePath\": \"src/Foo.purs\"}" `shouldEqual` Just "src/Foo.purs"
    it "extracts field with space before colon" do
      extractJsonField "modulePath" "{\"modulePath\" : \"src/Foo.purs\"}" `shouldEqual` Just "src/Foo.purs"
    it "returns Nothing for missing field" do
      extractJsonField "modulePath" "{\"other\": \"value\"}" `shouldEqual` Nothing
    it "returns Nothing for non-string value" do
      extractJsonField "count" "{\"count\": 42}" `shouldEqual` Nothing

  describe "moduleToRoute" do
    it "page without metadata" do
      let info = { name: "Page.About", source: "module Page.About where\npage :: Page \"about\"\npage = simplePage \\_ -> mempty", file: "src/Page/About.purs", directive: Nothing }
      let result = moduleToRoute "app" "output" info
      map _.hasMetadata result `shouldEqual` Just false
      map _.kind result `shouldEqual` Just "page"
    it "page with metadata" do
      let info = { name: "Page.Blog", source: "module Page.Blog where\npage :: Page \"blog\"\npage = simplePage \\_ -> mempty\nmetadata :: Metadata \"blog\"\nmetadata = simpleMetadata \\_ -> {}", file: "src/Page/Blog.purs", directive: Nothing }
      let result = moduleToRoute "app" "output" info
      map _.hasMetadata result `shouldEqual` Just true
    it "client page never has metadata" do
      let info = { name: "Page.Home.Client", source: "module Page.Home.Client where\npage :: Page Root\npage = simplePage \\_ -> mempty\nmetadata :: Metadata Root\nmetadata = simpleMetadata \\_ -> {}", file: "src/Page/Home/Client.purs", directive: Just "use client" }
      let result = moduleToRoute "app" "output" info
      map _.hasMetadata result `shouldEqual` Just false
    it "layout with metadata" do
      let info = { name: "Layout.Root", source: "module Layout.Root where\nlayout :: Layout\nlayout = simpleLayout \\_ -> mempty\nmetadata :: Metadata Root\nmetadata = simpleMetadata \\_ -> {}", file: "src/Layout/Root.purs", directive: Nothing }
      let result = moduleToRoute "app" "output" info
      map _.hasMetadata result `shouldEqual` Just true
    it "loading never has metadata" do
      let info = { name: "Loading.Dashboard", source: "module Loading.Dashboard where\nloading :: Loading (\"dashboard\")\nloading = undefined\nmetadata :: Metadata (\"dashboard\")\nmetadata = undefined", file: "src/Loading/Dashboard.purs", directive: Nothing }
      let result = moduleToRoute "app" "output" info
      map _.hasMetadata result `shouldEqual` Just false
    it "template with metadata" do
      let info = { name: "Template.Dashboard", source: "module Template.Dashboard where\ntemplate :: Template (\"dashboard\")\ntemplate = undefined\nmetadata :: Metadata (\"dashboard\")\nmetadata = undefined", file: "src/Template/Dashboard.purs", directive: Nothing }
      let result = moduleToRoute "app" "output" info
      map _.kind result `shouldEqual` Just "template"
      map _.hasMetadata result `shouldEqual` Just true
    it "page with staticParams" do
      let info = { name: "Page.Blog.Slug", source: "module Page.Blog.Slug where\npage :: Page (\"blog\" / \"slug\" : String)\npage = simplePage \\_ -> mempty\nstaticParams :: StaticParams (\"blog\" / \"slug\" : String)\nstaticParams = simpleStaticParams $ pure []", file: "src/Page/Blog/Slug.purs", directive: Nothing }
      let result = moduleToRoute "app" "output" info
      map _.hasStaticParams result `shouldEqual` Just true
    it "globalError always client never metadata" do
      let info = { name: "GlobalError.Root", source: "module GlobalError.Root where\nglobalError :: GlobalError Root\nglobalError = undefined\nmetadata :: Metadata Root\nmetadata = undefined", file: "src/GlobalError/Root.purs", directive: Nothing }
      let result = moduleToRoute "app" "output" info
      map _.kind result `shouldEqual` Just "globalError"
      map _.hasMetadata result `shouldEqual` Just false
    it "returns Nothing for non-route module" do
      let info = { name: "Utils.Helpers", source: "module Utils.Helpers where\nfoo :: String\nfoo = \"bar\"", file: "src/Utils/Helpers.purs", directive: Nothing }
      moduleToRoute "app" "output" info `shouldEqual` Nothing

  describe "extractModule" do
    it "unix path" do
      Plugin.extractModule "/project/output/Page.Home/index.js" `shouldEqual` Just "Page.Home"
    it "windows path" do
      Plugin.extractModule "C:\\project\\output\\Page.Home\\index.js" `shouldEqual` Just "Page.Home"
    it "non-matching path" do
      Plugin.extractModule "/some/random/file.js" `shouldEqual` Nothing
    it "dotted module name" do
      Plugin.extractModule "/project/output/Page.Blog.Slug/index.js" `shouldEqual` Just "Page.Blog.Slug"

  where
  route kind directive =
    { mod: "Page.Home"
    , kind
    , filePath: "app/page.tsx"
    , relImport: "../output/Page.Home/index.js"
    , routePath: "app"
    , directive
    , hasMetadata: false
    , hasStaticParams: false
    }
  goldenCases =
    [ "client-page" /\ generateTsx (route "page" (Just "use client"))
    , "server-page" /\ generateTsx (route "page" Nothing)
    , "layout" /\ generateTsx
        { mod: "Layout.Root", kind: "layout", filePath: "app/layout.tsx"
        , relImport: "../output/Layout.Root/index.js", routePath: "app"
        , directive: Nothing, hasMetadata: false, hasStaticParams: false
        }
    , "error" /\ generateTsx
        { mod: "ErrorBoundary.Root", kind: "error", filePath: "app/error.tsx"
        , relImport: "../output/ErrorBoundary.Root/index.js", routePath: "app"
        , directive: Nothing, hasMetadata: false, hasStaticParams: false
        }
    , "loading" /\ generateTsx
        { mod: "Loading.Root", kind: "loading", filePath: "app/loading.tsx"
        , relImport: "../output/Loading.Root/index.js", routePath: "app"
        , directive: Nothing, hasMetadata: false, hasStaticParams: false
        }
    , "not-found" /\ generateTsx
        { mod: "NotFound.Root", kind: "notFound", filePath: "app/not-found.tsx"
        , relImport: "../output/NotFound.Root/index.js", routePath: "app"
        , directive: Nothing, hasMetadata: false, hasStaticParams: false
        }
    , "nested-page" /\ generateTsx
        { mod: "Page.Foo", kind: "page", filePath: "app/foo/page.tsx"
        , relImport: "../output/Page.Foo/index.js", routePath: "app/foo"
        , directive: Nothing, hasMetadata: false, hasStaticParams: false
        }
    , "server-directive-page" /\ generateTsx (route "page" (Just "use server"))
    , "server-page-metadata" /\ generateTsx
        { mod: "Page.Blog.Slug", kind: "page", filePath: "app/blog/[slug]/page.tsx"
        , relImport: "../output/Page.Blog.Slug/index.js", routePath: "app/blog/[slug]"
        , directive: Nothing, hasMetadata: true, hasStaticParams: false
        }
    , "layout-metadata" /\ generateTsx
        { mod: "Layout.Root", kind: "layout", filePath: "app/layout.tsx"
        , relImport: "../output/Layout.Root/index.js", routePath: "app"
        , directive: Nothing, hasMetadata: true, hasStaticParams: false
        }
    , "template" /\ generateTsx
        { mod: "Template.Dashboard", kind: "template", filePath: "app/dashboard/template.tsx"
        , relImport: "../output/Template.Dashboard/index.js", routePath: "app/dashboard"
        , directive: Nothing, hasMetadata: false, hasStaticParams: false
        }
    , "global-error" /\ generateTsx
        { mod: "GlobalError.Root", kind: "globalError", filePath: "app/global-error.tsx"
        , relImport: "../output/GlobalError.Root/index.js", routePath: "app"
        , directive: Nothing, hasMetadata: false, hasStaticParams: false
        }
    , "static-params-page" /\ generateTsx
        { mod: "Page.Blog.Slug", kind: "page", filePath: "app/blog/[slug]/page.tsx"
        , relImport: "../output/Page.Blog.Slug/index.js", routePath: "app/blog/[slug]"
        , directive: Nothing, hasMetadata: false, hasStaticParams: true
        }
    ]
