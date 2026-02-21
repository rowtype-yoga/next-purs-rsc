module Next.Font.Google.Barlow where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import barlowImpl :: forall r. { | r } -> FontConfig

barlow :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
barlow = barlowImpl
