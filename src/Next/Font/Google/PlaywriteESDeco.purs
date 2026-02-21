module Next.Font.Google.PlaywriteESDeco where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import playwriteESDecoImpl :: forall r. { | r } -> FontConfig

playwriteESDeco :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
playwriteESDeco = playwriteESDecoImpl
