module Next.Font.Google.PlaywriteDESAS where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import playwriteDESASImpl :: forall r. { | r } -> FontConfig

playwriteDESAS :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
playwriteDESAS = playwriteDESASImpl
