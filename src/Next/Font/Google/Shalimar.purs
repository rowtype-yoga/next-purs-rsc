module Next.Font.Google.Shalimar where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import shalimarImpl :: forall r. { | r } -> FontConfig

shalimar :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
shalimar = shalimarImpl
