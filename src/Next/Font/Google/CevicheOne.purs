module Next.Font.Google.CevicheOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import cevicheOneImpl :: forall r. { | r } -> FontConfig

cevicheOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
cevicheOne = cevicheOneImpl
