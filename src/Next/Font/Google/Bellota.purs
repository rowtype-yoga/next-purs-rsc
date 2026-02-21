module Next.Font.Google.Bellota where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import bellotaImpl :: forall r. { | r } -> FontConfig

bellota :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
bellota = bellotaImpl
