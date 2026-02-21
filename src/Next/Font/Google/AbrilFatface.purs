module Next.Font.Google.AbrilFatface where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import abrilFatfaceImpl :: forall r. { | r } -> FontConfig

abrilFatface :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
abrilFatface = abrilFatfaceImpl
