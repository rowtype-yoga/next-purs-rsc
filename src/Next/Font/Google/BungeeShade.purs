module Next.Font.Google.BungeeShade where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import bungeeShadeImpl :: forall r. { | r } -> FontConfig

bungeeShade :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
bungeeShade = bungeeShadeImpl
