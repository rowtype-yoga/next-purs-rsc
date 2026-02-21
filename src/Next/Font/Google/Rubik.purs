module Next.Font.Google.Rubik where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import rubikImpl :: forall r. { | r } -> FontConfig

rubik :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
rubik = rubikImpl
