module Next.Font.Google.RubikStorm where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import rubikStormImpl :: forall r. { | r } -> FontConfig

rubikStorm :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
rubikStorm = rubikStormImpl
