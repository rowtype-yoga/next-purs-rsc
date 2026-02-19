module Test.Loader where

import Prelude

import Data.Maybe (Maybe(..))
import Data.String as String
import Effect (Effect)
import Effect.Console as Console
import Loader.Main (Segment(..), detectDirective, extractModuleName, generateTsx, kindToDeclName, kindToFileName, segmentsToNextPath)
import Loader.Webpack as Webpack
import Test.Assert (assertEqual, assertTrue', assertFalse')

main :: Effect Unit
main = do
  testDetectDirective
  testExtractModuleName
  testSegmentsToNextPath
  testKindToFileName
  testKindToDeclName
  testGenerateTsx
  testExtractModule
  Console.log "All loader tests passed!"

--------------------------------------------------------------------------------
-- detectDirective
--------------------------------------------------------------------------------

testDetectDirective :: Effect Unit
testDetectDirective = do
  assertEqual
    { actual: detectDirective "Foo" "module Foo where\n-- @client\nimport Prelude"
    , expected: Just "use client"
    }
  assertEqual
    { actual: detectDirective "Foo" "module Foo where\n-- @server\nimport Prelude"
    , expected: Just "use server"
    }
  assertEqual
    { actual: detectDirective "Page.Home.Client" ""
    , expected: Just "use client"
    }
  assertEqual
    { actual: detectDirective "Page.Home.Server" ""
    , expected: Just "use server"
    }
  assertEqual
    { actual: detectDirective "Actions.Login" ""
    , expected: Just "use server"
    }
  assertEqual
    { actual: detectDirective "Page.Home" "module Page.Home where\nimport Prelude"
    , expected: Nothing
    }

--------------------------------------------------------------------------------
-- extractModuleName
--------------------------------------------------------------------------------

testExtractModuleName :: Effect Unit
testExtractModuleName = do
  assertEqual
    { actual: extractModuleName "module Foo.Bar where\n"
    , expected: Just "Foo.Bar"
    }
  assertEqual
    { actual: extractModuleName "module Foo.Bar (baz) where\n"
    , expected: Just "Foo.Bar"
    }
  assertEqual
    { actual: extractModuleName "just some random text"
    , expected: Nothing
    }

--------------------------------------------------------------------------------
-- segmentsToNextPath
--------------------------------------------------------------------------------

testSegmentsToNextPath :: Effect Unit
testSegmentsToNextPath = do
  assertEqual
    { actual: segmentsToNextPath [ Static "blog" ]
    , expected: [ "blog" ]
    }
  assertEqual
    { actual: segmentsToNextPath [ Dynamic "slug" ]
    , expected: [ "[slug]" ]
    }
  assertEqual
    { actual: segmentsToNextPath [ CatchAll "slug" ]
    , expected: [ "[...slug]" ]
    }
  assertEqual
    { actual: segmentsToNextPath [ OptCatchAll "slug" ]
    , expected: [ "[[...slug]]" ]
    }
  assertEqual
    { actual: segmentsToNextPath [ Static "blog", Dynamic "id" ]
    , expected: [ "blog", "[id]" ]
    }

--------------------------------------------------------------------------------
-- kindToFileName
--------------------------------------------------------------------------------

testKindToFileName :: Effect Unit
testKindToFileName = do
  assertEqual { actual: kindToFileName "notFound", expected: "not-found" }
  assertEqual { actual: kindToFileName "page", expected: "page" }
  assertEqual { actual: kindToFileName "layout", expected: "layout" }
  assertEqual { actual: kindToFileName "error", expected: "error" }
  assertEqual { actual: kindToFileName "loading", expected: "loading" }

--------------------------------------------------------------------------------
-- kindToDeclName
--------------------------------------------------------------------------------

testKindToDeclName :: Effect Unit
testKindToDeclName = do
  assertEqual { actual: kindToDeclName "error", expected: "error" }
  assertEqual { actual: kindToDeclName "page", expected: "page" }
  assertEqual { actual: kindToDeclName "layout", expected: "layout" }
  assertEqual { actual: kindToDeclName "notFound", expected: "notFound" }

--------------------------------------------------------------------------------
-- generateTsx
--------------------------------------------------------------------------------

testGenerateTsx :: Effect Unit
testGenerateTsx = do
  assertContains "client directive" "\"use client\";" clientTsx
  assertContains "client await" "await mk()" clientTsx

  assertContains "server page async" "async function(props)" serverPageTsx
  assertContains "server page params" "await (props.params" serverPageTsx
  assertContains "server page searchParams" "await (props.searchParams" serverPageTsx
  assertNotContains "server page no use client" "\"use client\"" serverPageTsx

  assertContains "layout render(props)" "render(props)" layoutTsx
  assertNotContains "layout no params" "params" layoutTsx

  assertContains "error use client" "\"use client\";" errorTsx

  assertContains "loading render()" "render()" loadingTsx
  assertNotContains "loading no props" "props" loadingTsx

  assertContains "notFound render()" "render()" notFoundTsx

  assertContains "marker" "@generated by purescript-rsc" serverPageTsx

  assertContains "import path" "\"../output/Page.Foo/index.js\"" fooTsx
  where
  route kind directive =
    { mod: "Page.Home"
    , kind
    , filePath: "app/page.tsx"
    , relImport: "../output/Page.Home/index.js"
    , routePath: "app"
    , directive
    }
  clientTsx = generateTsx (route "page" (Just "use client"))
  serverPageTsx = generateTsx (route "page" Nothing)
  layoutTsx = generateTsx
    { mod: "Layout.Root", kind: "layout", filePath: "app/layout.tsx"
    , relImport: "../output/Layout.Root/index.js", routePath: "app"
    , directive: Nothing
    }
  errorTsx = generateTsx
    { mod: "ErrorBoundary.Root", kind: "error", filePath: "app/error.tsx"
    , relImport: "../output/ErrorBoundary.Root/index.js", routePath: "app"
    , directive: Nothing
    }
  loadingTsx = generateTsx
    { mod: "Loading.Root", kind: "loading", filePath: "app/loading.tsx"
    , relImport: "../output/Loading.Root/index.js", routePath: "app"
    , directive: Nothing
    }
  notFoundTsx = generateTsx
    { mod: "NotFound.Root", kind: "notFound", filePath: "app/not-found.tsx"
    , relImport: "../output/NotFound.Root/index.js", routePath: "app"
    , directive: Nothing
    }
  fooTsx = generateTsx
    { mod: "Page.Foo", kind: "page", filePath: "app/foo/page.tsx"
    , relImport: "../output/Page.Foo/index.js", routePath: "app/foo"
    , directive: Nothing
    }

--------------------------------------------------------------------------------
-- extractModule (Webpack loader)
--------------------------------------------------------------------------------

testExtractModule :: Effect Unit
testExtractModule = do
  assertEqual
    { actual: Webpack.extractModule "/project/output/Page.Home/index.js"
    , expected: Just "Page.Home"
    }
  assertEqual
    { actual: Webpack.extractModule "C:\\project\\output\\Page.Home\\index.js"
    , expected: Just "Page.Home"
    }
  assertEqual
    { actual: Webpack.extractModule "/some/random/file.js"
    , expected: Nothing
    }
  assertEqual
    { actual: Webpack.extractModule "/project/output/Page.Blog.Slug/index.js"
    , expected: Just "Page.Blog.Slug"
    }

--------------------------------------------------------------------------------
-- Helpers
--------------------------------------------------------------------------------

assertContains :: String -> String -> String -> Effect Unit
assertContains label needle haystack =
  assertTrue' (label <> ": expected to contain " <> show needle)
    (String.contains (String.Pattern needle) haystack)

assertNotContains :: String -> String -> String -> Effect Unit
assertNotContains label needle haystack =
  assertFalse' (label <> ": expected to contain " <> show needle)
    (String.contains (String.Pattern needle) haystack)
