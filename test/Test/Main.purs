module Test.Main where

import Prelude

import Effect (Effect)
import Effect.Console as Console
import Route (Route(..), toPath)
import Test.Assert (assertEqual)

main :: Effect Unit
main = do
  assertEqual { actual: toPath Home, expected: "/" }
  assertEqual { actual: toPath About, expected: "/about" }
  assertEqual { actual: toPath Dashboard, expected: "/dashboard" }
  assertEqual { actual: toPath (Blog__Slug "hello"), expected: "/blog/hello" }
  Console.log "All route tests passed!"
