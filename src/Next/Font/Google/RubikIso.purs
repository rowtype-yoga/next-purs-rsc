module Next.Font.Google.RubikIso where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import rubikIsoImpl :: forall r. { | r } -> FontConfig

rubikIso :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
rubikIso = rubikIsoImpl
