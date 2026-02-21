module Next.Font.Google.PlaywriteCZ where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import playwriteCZImpl :: forall r. { | r } -> FontConfig

playwriteCZ :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
playwriteCZ = playwriteCZImpl
