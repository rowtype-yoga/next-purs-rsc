module Next.Navigation.Server
  ( redirect
  , permanentRedirect
  , triggerNotFound
  ) where

import Prelude

import Effect (Effect)
import Effect.Uncurried (EffectFn1, runEffectFn1)
import Route (Route, toPath)

foreign import redirectImpl :: EffectFn1 String Unit
redirect :: Route -> Effect Unit
redirect route = runEffectFn1 redirectImpl (toPath route)

foreign import permanentRedirectImpl :: EffectFn1 String Unit
permanentRedirect :: Route -> Effect Unit
permanentRedirect route = runEffectFn1 permanentRedirectImpl (toPath route)

foreign import notFoundImpl :: EffectFn1 Unit Unit
triggerNotFound :: Effect Unit
triggerNotFound = runEffectFn1 notFoundImpl unit
