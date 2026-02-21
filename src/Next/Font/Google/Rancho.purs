module Next.Font.Google.Rancho where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import ranchoImpl :: forall r. { | r } -> FontConfig

rancho :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
rancho = ranchoImpl
