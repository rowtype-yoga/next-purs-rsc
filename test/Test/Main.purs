module Test.Main where

import Prelude

import Route (Route(..), toPath)
import ViTest (describe, test, viTest)
import ViTest.Expect ((===))

main :: Unit
main = viTest do
  describe "toPath" do
    test "Home" do toPath Home === "/"
    test "About" do toPath About === "/about"
    test "Dashboard" do toPath Dashboard === "/dashboard"
    test "Blog__Slug" do toPath (Blog__Slug "hello") === "/blog/hello"
