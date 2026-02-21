module Next.Font.Google.PlaywriteAUSA where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import playwriteAUSAImpl :: forall r. { | r } -> FontConfig

playwriteAUSA :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
playwriteAUSA = playwriteAUSAImpl
