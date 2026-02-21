module Next.Font.Google.RubikGlitchPop where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import rubikGlitchPopImpl :: forall r. { | r } -> FontConfig

rubikGlitchPop :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
rubikGlitchPop = rubikGlitchPopImpl
