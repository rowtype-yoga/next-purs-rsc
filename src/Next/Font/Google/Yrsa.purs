module Next.Font.Google.Yrsa where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import yrsaImpl :: forall r. { | r } -> FontConfig

yrsa :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
yrsa = yrsaImpl
