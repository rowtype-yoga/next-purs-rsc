module Next.Font.Google.NovaRound where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import novaRoundImpl :: forall r. { | r } -> FontConfig

novaRound :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
novaRound = novaRoundImpl
