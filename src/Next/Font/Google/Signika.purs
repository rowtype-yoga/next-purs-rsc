module Next.Font.Google.Signika where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import signikaImpl :: forall r. { | r } -> FontConfig

signika :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
signika = signikaImpl
