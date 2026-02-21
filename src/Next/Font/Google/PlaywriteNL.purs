module Next.Font.Google.PlaywriteNL where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import playwriteNLImpl :: forall r. { | r } -> FontConfig

playwriteNL :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
playwriteNL = playwriteNLImpl
