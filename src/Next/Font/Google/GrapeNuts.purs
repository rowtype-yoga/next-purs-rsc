module Next.Font.Google.GrapeNuts where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import grapeNutsImpl :: forall r. { | r } -> FontConfig

grapeNuts :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
grapeNuts = grapeNutsImpl
