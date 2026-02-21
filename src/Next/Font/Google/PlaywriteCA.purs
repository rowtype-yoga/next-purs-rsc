module Next.Font.Google.PlaywriteCA where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import playwriteCAImpl :: forall r. { | r } -> FontConfig

playwriteCA :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
playwriteCA = playwriteCAImpl
