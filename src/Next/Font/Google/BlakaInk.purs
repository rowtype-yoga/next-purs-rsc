module Next.Font.Google.BlakaInk where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import blakaInkImpl :: forall r. { | r } -> FontConfig

blakaInk :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
blakaInk = blakaInkImpl
