module Next.Font.Google.SignikaNegative where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import signikaNegativeImpl :: forall r. { | r } -> FontConfig

signikaNegative :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
signikaNegative = signikaNegativeImpl
