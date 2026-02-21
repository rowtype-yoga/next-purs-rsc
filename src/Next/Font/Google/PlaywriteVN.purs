module Next.Font.Google.PlaywriteVN where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import playwriteVNImpl :: forall r. { | r } -> FontConfig

playwriteVN :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
playwriteVN = playwriteVNImpl
