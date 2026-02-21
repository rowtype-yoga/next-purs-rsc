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

-- | Options for `next/dynamic`.
-- |
-- | - `ssr`: When `false`, the component is only rendered on the client.
-- | - `loading`: A fallback component shown while the dynamic import resolves.
type DynamicOptions =
  ( ssr :: Boolean
  , loading :: Unit -> JSX
  )

foreign import dynamicImpl :: forall props opts. Fn2 (Effect (Promise { default :: ReactComponent props })) { | opts } (ReactComponent props)

-- | Lazily load a React component via `next/dynamic`.
-- |
-- | The `Aff` is evaluated once when the component is first rendered.
-- |
-- | ```purescript
-- | myChart = dynamic (pure chartComponent) { ssr: false }
-- | ```
dynamic
  :: forall props opts opts_
   . Row.Union opts opts_ DynamicOptions
  => Aff (ReactComponent props)
  -> { | opts }
  -> ReactComponent props
dynamic loader opts = runFn2 dynamicImpl (Promise.fromAff (map (\c -> { default: c }) loader)) opts

-- | Like `dynamic`, but takes an Om computation that produces a render function.
-- |
-- | The Om context is used to initialise the component via `omComponent`,
-- | giving it access to context reads and hooks.
-- |
-- | ```purescript
-- | myWidget = omDynamic ctx "MyWidget" { ssr: false } do
-- |   db <- Om.asks _.db
-- |   pure \{ id } -> do
-- |     item <- useAff (db.getItem id)
-- |     renderItem item
-- | ```
omDynamic
  :: forall ctx hooks props opts opts_
   . Row.Union opts opts_ DynamicOptions
  => { | ctx }
  -> String
  -> { | opts }
  -> Om.Om { | ctx } () (props -> OmRender ctx Unit hooks JSX)
  -> ReactComponent props
omDynamic ctx name opts om = dynamic (unsafeCoerce loader) opts
  where
  loader = Om.runOm ctx { exception: \_ -> pure (\_ -> mempty :: JSX) } do
    render <- om
    omComponent name render
