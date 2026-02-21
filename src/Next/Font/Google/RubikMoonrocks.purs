module Next.Font.Google.RubikMoonrocks where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import rubikMoonrocksImpl :: forall r. { | r } -> FontConfig

rubikMoonrocks :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
rubikMoonrocks = rubikMoonrocksImpl
