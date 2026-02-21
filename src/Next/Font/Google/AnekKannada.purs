module Next.Font.Google.AnekKannada where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import anekKannadaImpl :: forall r. { | r } -> FontConfig

anekKannada :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
anekKannada = anekKannadaImpl
