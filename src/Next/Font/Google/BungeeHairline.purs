module Next.Font.Google.BungeeHairline where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import bungeeHairlineImpl :: forall r. { | r } -> FontConfig

bungeeHairline :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
bungeeHairline = bungeeHairlineImpl
