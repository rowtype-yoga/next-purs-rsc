module Next.Font.Google.RubikLines where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import rubikLinesImpl :: forall r. { | r } -> FontConfig

rubikLines :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
rubikLines = rubikLinesImpl
