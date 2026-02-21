module Next.Font.Google.PlaywriteCL where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import playwriteCLImpl :: forall r. { | r } -> FontConfig

playwriteCL :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
playwriteCL = playwriteCLImpl
