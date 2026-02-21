module Next.Font.Google.Pompiere where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import pompiereImpl :: forall r. { | r } -> FontConfig

pompiere :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
pompiere = pompiereImpl
