module Next.Font.Google.PlaywriteNO where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import playwriteNOImpl :: forall r. { | r } -> FontConfig

playwriteNO :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
playwriteNO = playwriteNOImpl
