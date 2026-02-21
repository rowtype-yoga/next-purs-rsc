module Next.Font.Google.TwinkleStar where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import twinkleStarImpl :: forall r. { | r } -> FontConfig

twinkleStar :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
twinkleStar = twinkleStarImpl
