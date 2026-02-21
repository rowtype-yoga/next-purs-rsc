module Next.Font.Google.BungeeSpice where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import bungeeSpiceImpl :: forall r. { | r } -> FontConfig

bungeeSpice :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
bungeeSpice = bungeeSpiceImpl
