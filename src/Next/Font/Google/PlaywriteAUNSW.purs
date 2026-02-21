module Next.Font.Google.PlaywriteAUNSW where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import playwriteAUNSWImpl :: forall r. { | r } -> FontConfig

playwriteAUNSW :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
playwriteAUNSW = playwriteAUNSWImpl
