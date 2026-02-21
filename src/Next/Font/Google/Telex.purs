module Next.Font.Google.Telex where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import telexImpl :: forall r. { | r } -> FontConfig

telex :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
telex = telexImpl
