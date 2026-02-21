module Next.Font.Google.Anaheim where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import anaheimImpl :: forall r. { | r } -> FontConfig

anaheim :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
anaheim = anaheimImpl
