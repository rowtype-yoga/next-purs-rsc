module Next.Font.Google.Shojumaru where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import shojumaruImpl :: forall r. { | r } -> FontConfig

shojumaru :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
shojumaru = shojumaruImpl
