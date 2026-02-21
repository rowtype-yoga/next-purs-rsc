module Next.Font.Google.PlaywriteCU where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import playwriteCUImpl :: forall r. { | r } -> FontConfig

playwriteCU :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
playwriteCU = playwriteCUImpl
