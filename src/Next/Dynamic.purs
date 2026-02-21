module Next.Dynamic (dynamic, DynamicOptions) where

import Prelude

import Control.Promise (Promise)
import Control.Promise as Promise
import Data.Function.Uncurried (Fn2, runFn2)
import Effect (Effect)
import Effect.Aff (Aff)
import Prim.Row as Row
import React.Basic (JSX, ReactComponent)

type DynamicOptions =
  ( ssr :: Boolean
  , loading :: Unit -> JSX
  )

foreign import dynamicImpl :: forall props opts. Fn2 (Effect (Promise { default :: ReactComponent props })) { | opts } (ReactComponent props)

dynamic
  :: forall props opts opts_
   . Row.Union opts opts_ DynamicOptions
  => Aff (ReactComponent props)
  -> { | opts }
  -> ReactComponent props
dynamic loader opts = runFn2 dynamicImpl (Promise.fromAff (map (\c -> { default: c }) loader)) opts
