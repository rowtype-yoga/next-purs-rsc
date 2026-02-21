module Next.Font.Google.BBHBogle where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import bBHBogleImpl :: forall r. { | r } -> FontConfig

bBHBogle :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
bBHBogle = bBHBogleImpl
