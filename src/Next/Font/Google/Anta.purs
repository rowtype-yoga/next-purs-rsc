module Next.Font.Google.Anta where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import antaImpl :: forall r. { | r } -> FontConfig

anta :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
anta = antaImpl
