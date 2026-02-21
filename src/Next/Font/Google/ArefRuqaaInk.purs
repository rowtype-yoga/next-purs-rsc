module Next.Font.Google.ArefRuqaaInk where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import arefRuqaaInkImpl :: forall r. { | r } -> FontConfig

arefRuqaaInk :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
arefRuqaaInk = arefRuqaaInkImpl
