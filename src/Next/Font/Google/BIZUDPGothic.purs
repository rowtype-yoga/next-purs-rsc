module Next.Font.Google.BIZUDPGothic where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import bIZUDPGothicImpl :: forall r. { | r } -> FontConfig

bIZUDPGothic :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
bIZUDPGothic = bIZUDPGothicImpl
