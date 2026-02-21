module Next.Font.Google.Sigmar where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import sigmarImpl :: forall r. { | r } -> FontConfig

sigmar :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
sigmar = sigmarImpl
