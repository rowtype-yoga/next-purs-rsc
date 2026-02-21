module Next.Font.Google.ZenDots where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import zenDotsImpl :: forall r. { | r } -> FontConfig

zenDots :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
zenDots = zenDotsImpl
