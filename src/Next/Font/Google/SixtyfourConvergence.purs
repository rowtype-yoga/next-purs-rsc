module Next.Font.Google.SixtyfourConvergence where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import sixtyfourConvergenceImpl :: forall r. { | r } -> FontConfig

sixtyfourConvergence :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
sixtyfourConvergence = sixtyfourConvergenceImpl
