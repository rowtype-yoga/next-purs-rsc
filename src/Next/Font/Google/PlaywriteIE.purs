module Next.Font.Google.PlaywriteIE where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import playwriteIEImpl :: forall r. { | r } -> FontConfig

playwriteIE :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
playwriteIE = playwriteIEImpl
