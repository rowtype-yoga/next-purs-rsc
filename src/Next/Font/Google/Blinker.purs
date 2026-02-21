module Next.Font.Google.Blinker where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import blinkerImpl :: forall r. { | r } -> FontConfig

blinker :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
blinker = blinkerImpl
