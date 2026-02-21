module Next.Font.Google.CourierPrime where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import courierPrimeImpl :: forall r. { | r } -> FontConfig

courierPrime :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
courierPrime = courierPrimeImpl
