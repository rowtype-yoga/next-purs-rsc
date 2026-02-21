module Next.Font.Google.RubikMicrobe where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import rubikMicrobeImpl :: forall r. { | r } -> FontConfig

rubikMicrobe :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
rubikMicrobe = rubikMicrobeImpl
