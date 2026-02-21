module Next.Font.Google.Scada where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import scadaImpl :: forall r. { | r } -> FontConfig

scada :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
scada = scadaImpl
