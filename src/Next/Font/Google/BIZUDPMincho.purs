module Next.Font.Google.BIZUDPMincho where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import bIZUDPMinchoImpl :: forall r. { | r } -> FontConfig

bIZUDPMincho :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
bIZUDPMincho = bIZUDPMinchoImpl
