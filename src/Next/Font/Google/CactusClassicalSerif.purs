module Next.Font.Google.CactusClassicalSerif where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import cactusClassicalSerifImpl :: forall r. { | r } -> FontConfig

cactusClassicalSerif :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
cactusClassicalSerif = cactusClassicalSerifImpl
