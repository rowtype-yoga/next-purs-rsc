module Next.Dynamic (dynamic, omDynamic, DynamicOptions) where

import Prelude

import Control.Promise (Promise)
import Control.Promise as Promise
import Data.Function.Uncurried (Fn2, runFn2)
import Effect (Effect)
import Effect.Aff (Aff)
import Prim.Row as Row
import React.Basic (JSX, ReactComponent)
import Unsafe.Coerce (unsafeCoerce)
import Yoga.Om as Om
import Yoga.React.Om (OmRender, omComponent)

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

omDynamic
  :: forall ctx hooks props opts opts_
   . Row.Union opts opts_ DynamicOptions
  => { | ctx }
  -> String
  -> Om.Om { | ctx } () (props -> OmRender ctx Unit hooks JSX)
  -> { | opts }
  -> ReactComponent props
omDynamic ctx name om opts = dynamic loader opts
  where
  loader = unsafeCoerce $ Om.runOm ctx { exception: \_ -> pure (\_ -> mempty :: JSX) } do
    render <- om
    omComponent name render
