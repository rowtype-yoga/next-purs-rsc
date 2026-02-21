module Next.Font.Google.Salsa where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import salsaImpl :: forall r. { | r } -> FontConfig

salsa :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
salsa = salsaImpl
