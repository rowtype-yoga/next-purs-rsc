module Test.Loader.Main where

import Prelude

import Effect (Effect)
import Test.Loader as Loader
import Test.Spec.Reporter (consoleReporter)
import Test.Spec.Runner.Node (runSpecAndExitProcess)

main :: Effect Unit
main = runSpecAndExitProcess [consoleReporter] Loader.spec
