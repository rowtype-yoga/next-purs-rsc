module Next.Font.Google.BungeeOutline where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import bungeeOutlineImpl :: forall r. { | r } -> FontConfig

bungeeOutline :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
bungeeOutline = bungeeOutlineImpl
