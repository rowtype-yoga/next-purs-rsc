module Next.Font.Google.TiroKannada where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import tiroKannadaImpl :: forall r. { | r } -> FontConfig

tiroKannada :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
tiroKannada = tiroKannadaImpl
