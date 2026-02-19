module Test.Loader where

import Prelude

import Data.Foldable (for_)
import Data.Maybe (Maybe(..))
import Data.Tuple.Nested ((/\))
import Loader.Main (Segment(..), detectDirective, extractModuleName, generateTsx, kindToDeclName, kindToFileName, segmentsToNextPath)
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
    it "page" do kindToFileName "page" `shouldEqual` "page"
    it "layout" do kindToFileName "layout" `shouldEqual` "layout"
    it "error" do kindToFileName "error" `shouldEqual` "error"
    it "loading" do kindToFileName "loading" `shouldEqual` "loading"

  describe "kindToDeclName" do
    it "error" do kindToDeclName "error" `shouldEqual` "error"
    it "page" do kindToDeclName "page" `shouldEqual` "page"
    it "layout" do kindToDeclName "layout" `shouldEqual` "layout"
    it "notFound" do kindToDeclName "notFound" `shouldEqual` "notFound"

  describe "generateTsx" do
    let golden = goldenTest { goldenDir: "loader/test/golden", diffDir: "loader/test/diffs" }
    for_ goldenCases \(name /\ actual) ->
      golden name actual

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
    }
  goldenCases =
    [ "client-page" /\ generateTsx (route "page" (Just "use client"))
    , "server-page" /\ generateTsx (route "page" Nothing)
    , "layout" /\ generateTsx
        { mod: "Layout.Root", kind: "layout", filePath: "app/layout.tsx"
        , relImport: "../output/Layout.Root/index.js", routePath: "app"
        , directive: Nothing
        }
    , "error" /\ generateTsx
        { mod: "ErrorBoundary.Root", kind: "error", filePath: "app/error.tsx"
        , relImport: "../output/ErrorBoundary.Root/index.js", routePath: "app"
        , directive: Nothing
        }
    , "loading" /\ generateTsx
        { mod: "Loading.Root", kind: "loading", filePath: "app/loading.tsx"
        , relImport: "../output/Loading.Root/index.js", routePath: "app"
        , directive: Nothing
        }
    , "not-found" /\ generateTsx
        { mod: "NotFound.Root", kind: "notFound", filePath: "app/not-found.tsx"
        , relImport: "../output/NotFound.Root/index.js", routePath: "app"
        , directive: Nothing
        }
    , "nested-page" /\ generateTsx
        { mod: "Page.Foo", kind: "page", filePath: "app/foo/page.tsx"
        , relImport: "../output/Page.Foo/index.js", routePath: "app/foo"
        , directive: Nothing
        }
    ]
