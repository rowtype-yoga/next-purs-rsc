module Next.Font.Google.Viga where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import vigaImpl :: forall r. { | r } -> FontConfig

viga :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
viga = vigaImpl
