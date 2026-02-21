module Next.Font.Google.PlaywriteUSModern where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import playwriteUSModernImpl :: forall r. { | r } -> FontConfig

playwriteUSModern :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
playwriteUSModern = playwriteUSModernImpl
