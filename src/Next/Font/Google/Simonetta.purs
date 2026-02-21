module Next.Font.Google.Simonetta where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import simonettaImpl :: forall r. { | r } -> FontConfig

simonetta :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
simonetta = simonettaImpl
