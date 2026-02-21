module Next.Font.Google.RubikBeastly where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import rubikBeastlyImpl :: forall r. { | r } -> FontConfig

rubikBeastly :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
rubikBeastly = rubikBeastlyImpl
