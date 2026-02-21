module Next.Font.Google.PlaywriteAUTAS where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import playwriteAUTASImpl :: forall r. { | r } -> FontConfig

playwriteAUTAS :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
playwriteAUTAS = playwriteAUTASImpl
