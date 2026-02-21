module Next.WebVitals (useReportWebVitals, UseReportWebVitals, WebVital) where

import Prelude

import Effect (Effect)
import Effect.Uncurried (EffectFn1, mkEffectFn1, runEffectFn1)
import React.Basic.Hooks.Internal (Hook, unsafeHook)

foreign import data UseReportWebVitals :: Type -> Type

type WebVital =
  { id :: String
  , name :: String
  , delta :: Number
  , value :: Number
  , rating :: String
  , navigationType :: String
  }

foreign import useReportWebVitalsImpl :: EffectFn1 (EffectFn1 WebVital Unit) Unit

useReportWebVitals :: (WebVital -> Effect Unit) -> Hook UseReportWebVitals Unit
useReportWebVitals callback =
  unsafeHook (runEffectFn1 useReportWebVitalsImpl (mkEffectFn1 callback))
