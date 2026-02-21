module Next.Font.Google.PlaywriteAUQLD where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import playwriteAUQLDImpl :: forall r. { | r } -> FontConfig

playwriteAUQLD :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
playwriteAUQLD = playwriteAUQLDImpl
