module Next.Font.Google.LoveLight where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import loveLightImpl :: forall r. { | r } -> FontConfig

loveLight :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
loveLight = loveLightImpl
