module Next.Font.Google.RubikGlitch where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import rubikGlitchImpl :: forall r. { | r } -> FontConfig

rubikGlitch :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
rubikGlitch = rubikGlitchImpl
