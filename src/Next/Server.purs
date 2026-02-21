module Next.Server (after, connection) where

import Prelude

import Control.Promise (Promise)
import Control.Promise as Promise
import Effect (Effect)
import Effect.Aff (Aff)
import Effect.Uncurried (EffectFn1, runEffectFn1)

foreign import afterImpl :: EffectFn1 (Effect (Promise Unit)) Unit

after :: Aff Unit -> Effect Unit
after work = runEffectFn1 afterImpl (Promise.fromAff work)

foreign import connectionImpl :: Effect (Promise Unit)

connection :: Aff Unit
connection = Promise.toAffE connectionImpl
