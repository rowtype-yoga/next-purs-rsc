module Next.Dynamic (dynamic) where

import Control.Promise (Promise)
import Data.Function.Uncurried (Fn2, runFn2)
import Effect (Effect)
import React.Basic (ReactComponent)

foreign import dynamicImpl :: forall props. Fn2 (Effect (Promise { default :: ReactComponent props })) { ssr :: Boolean } (ReactComponent props)

dynamic :: forall props. Effect (Promise { default :: ReactComponent props }) -> { ssr :: Boolean } -> ReactComponent props
dynamic = runFn2 dynamicImpl
