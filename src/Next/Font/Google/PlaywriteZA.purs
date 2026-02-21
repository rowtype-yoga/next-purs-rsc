module Next.Font.Google.PlaywriteZA where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import playwriteZAImpl :: forall r. { | r } -> FontConfig

playwriteZA :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
playwriteZA = playwriteZAImpl
