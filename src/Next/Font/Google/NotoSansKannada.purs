module Next.Font.Google.NotoSansKannada where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansKannadaImpl :: forall r. { | r } -> FontConfig

notoSansKannada :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansKannada = notoSansKannadaImpl
