module Next.Font.Google.PlaywriteNGModern where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import playwriteNGModernImpl :: forall r. { | r } -> FontConfig

playwriteNGModern :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
playwriteNGModern = playwriteNGModernImpl
