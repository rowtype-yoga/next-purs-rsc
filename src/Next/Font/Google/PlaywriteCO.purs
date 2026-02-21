module Next.Font.Google.PlaywriteCO where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import playwriteCOImpl :: forall r. { | r } -> FontConfig

playwriteCO :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
playwriteCO = playwriteCOImpl
