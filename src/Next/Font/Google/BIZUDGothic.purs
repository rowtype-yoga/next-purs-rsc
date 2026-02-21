module Next.Font.Google.BIZUDGothic where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import bIZUDGothicImpl :: forall r. { | r } -> FontConfig

bIZUDGothic :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
bIZUDGothic = bIZUDGothicImpl
