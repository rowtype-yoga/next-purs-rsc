module Next.Font.Google.PlaywriteIS where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import playwriteISImpl :: forall r. { | r } -> FontConfig

playwriteIS :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
playwriteIS = playwriteISImpl
