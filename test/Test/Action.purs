module Test.Action where

import Prelude

import Control.Promise as Promise
import Data.Function.Uncurried (Fn2, runFn2)
import Effect (Effect)
import Effect.Aff (Aff)
import Effect.Class (liftEffect)
import Next.Action (FormAction, serverAction, formAction, callServerAction, FormData)
import Unsafe.Coerce (unsafeCoerce)
import ViTest (describe, test, viTest)
import ViTest.Expect ((===))

foreign import _mkMockFormData :: Effect FormData

tests :: Unit
tests = viTest do
  describe "serverAction" do
    test "returns correct output when called" do
      let action = serverAction \(n :: Int) -> pure (n * 2)
      result <- callServerAction action 21
      result === 42

    test "works with String input/output" do
      let action = serverAction \(s :: String) -> pure ("hello " <> s)
      result <- callServerAction action "world"
      result === "hello world"

  describe "formAction" do
    test "parses FormData into typed record" do
      let action = formAction @(title :: String, count :: Int) \prevState fields -> do
            pure (prevState <> ": " <> fields.title <> " " <> show fields.count)
      fd <- liftEffect _mkMockFormData
      result <- callFormAction action "init" fd
      result === "init: hello 42"

  describe "callServerAction" do
    test "round-trips Aff correctly" do
      let action = serverAction \(input :: { x :: Int, y :: Int }) -> pure (input.x + input.y)
      result <- callServerAction action { x: 10, y: 32 }
      result === 42

callFormAction :: forall state fields. FormAction state fields -> state -> FormData -> Aff state
callFormAction action prevState fd = do
  let promise = runFn2 (unsafeCoerce action :: Fn2 state FormData (Promise.Promise state)) prevState fd
  Promise.toAff promise
