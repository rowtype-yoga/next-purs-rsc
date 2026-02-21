module Next.Font.Google.BungeeInline where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import bungeeInlineImpl :: forall r. { | r } -> FontConfig

bungeeInline :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
bungeeInline = bungeeInlineImpl
