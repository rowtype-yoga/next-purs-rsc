module Next.Font.Google.ArefRuqaa where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import arefRuqaaImpl :: forall r. { | r } -> FontConfig

arefRuqaa :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
arefRuqaa = arefRuqaaImpl
