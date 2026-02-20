module Next.Navigation.Server
  ( redirect
  , permanentRedirect
  , triggerNotFound
  ) where

import Prelude

import Effect (Effect)
import Effect.Uncurried (EffectFn1, runEffectFn1)
import Route (Route, toPath)

foreign import _redirectImpl :: EffectFn1 String Unit
foreign import _permanentRedirectImpl :: EffectFn1 String Unit
foreign import _notFoundImpl :: EffectFn1 Unit Unit

redirect :: Route -> Effect Unit
redirect route = runEffectFn1 _redirectImpl (toPath route)

permanentRedirect :: Route -> Effect Unit
permanentRedirect route = runEffectFn1 _permanentRedirectImpl (toPath route)

triggerNotFound :: Effect Unit
triggerNotFound = runEffectFn1 _notFoundImpl unit
