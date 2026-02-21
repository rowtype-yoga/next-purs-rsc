module Next.Font.Google.PlaywriteID where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import playwriteIDImpl :: forall r. { | r } -> FontConfig

playwriteID :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
playwriteID = playwriteIDImpl
