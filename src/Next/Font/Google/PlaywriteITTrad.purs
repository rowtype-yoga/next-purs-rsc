module Next.Font.Google.PlaywriteITTrad where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import playwriteITTradImpl :: forall r. { | r } -> FontConfig

playwriteITTrad :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
playwriteITTrad = playwriteITTradImpl
