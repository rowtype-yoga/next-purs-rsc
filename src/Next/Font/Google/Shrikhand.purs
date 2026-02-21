module Next.Font.Google.Shrikhand where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import shrikhandImpl :: forall r. { | r } -> FontConfig

shrikhand :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
shrikhand = shrikhandImpl
