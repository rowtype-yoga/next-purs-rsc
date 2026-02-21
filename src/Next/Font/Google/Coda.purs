module Next.Font.Google.Coda where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import codaImpl :: forall r. { | r } -> FontConfig

coda :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
coda = codaImpl
