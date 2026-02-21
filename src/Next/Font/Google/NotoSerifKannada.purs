module Next.Font.Google.NotoSerifKannada where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSerifKannadaImpl :: forall r. { | r } -> FontConfig

notoSerifKannada :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSerifKannada = notoSerifKannadaImpl
