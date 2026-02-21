module Next.Font.Google.PlaywriteHU where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import playwriteHUImpl :: forall r. { | r } -> FontConfig

playwriteHU :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
playwriteHU = playwriteHUImpl
