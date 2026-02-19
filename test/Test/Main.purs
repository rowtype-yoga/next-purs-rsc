module Test.Main where

import Prelude

import Effect (Effect)
import Route (Route(..), toPath)
import Test.Spec (describe, it)
import Test.Spec.Assertions (shouldEqual)
import Test.Spec.Reporter (consoleReporter)
import Test.Spec.Runner.Node (runSpecAndExitProcess)

main :: Effect Unit
main = runSpecAndExitProcess [consoleReporter] do
  describe "toPath" do
    it "Home" do toPath Home `shouldEqual` "/"
    it "About" do toPath About `shouldEqual` "/about"
    it "Dashboard" do toPath Dashboard `shouldEqual` "/dashboard"
    it "Blog__Slug" do toPath (Blog__Slug "hello") `shouldEqual` "/blog/hello"
