module Next.Font.Google.CreteRound where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import creteRoundImpl :: forall r. { | r } -> FontConfig

creteRound :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
creteRound = creteRoundImpl
