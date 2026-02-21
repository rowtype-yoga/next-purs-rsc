module Next.Font.Google.Bungee where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import bungeeImpl :: forall r. { | r } -> FontConfig

bungee :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
bungee = bungeeImpl
