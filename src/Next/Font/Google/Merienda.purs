module Next.Font.Google.Merienda where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import meriendaImpl :: forall r. { | r } -> FontConfig

merienda :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
merienda = meriendaImpl
