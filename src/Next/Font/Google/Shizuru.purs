module Next.Font.Google.Shizuru where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import shizuruImpl :: forall r. { | r } -> FontConfig

shizuru :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
shizuru = shizuruImpl
