module Next.Font.Google.BIZUDMincho where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import bIZUDMinchoImpl :: forall r. { | r } -> FontConfig

bIZUDMincho :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
bIZUDMincho = bIZUDMinchoImpl
