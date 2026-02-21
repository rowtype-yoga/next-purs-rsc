module Next.Font.Google.Trocchi where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import trocchiImpl :: forall r. { | r } -> FontConfig

trocchi :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
trocchi = trocchiImpl
