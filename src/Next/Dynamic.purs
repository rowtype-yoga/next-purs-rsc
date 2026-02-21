module Next.Dynamic (clientOnly) where

import Prelude

import Control.Promise (Promise)
import Control.Promise as Promise
import Data.Function.Uncurried (Fn2, runFn2)
import Effect (Effect)
import React.Basic (ReactComponent)

foreign import dynamic :: forall props. Fn2 (Effect (Promise { default :: ReactComponent props })) { ssr :: Boolean } (ReactComponent props)

clientOnly :: forall props. ReactComponent props -> ReactComponent props
clientOnly component = runFn2 dynamic (Promise.fromAff (pure { default: component })) { ssr: false }
