module Next.Font.Google.VarelaRound where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import varelaRoundImpl :: forall r. { | r } -> FontConfig

varelaRound :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
varelaRound = varelaRoundImpl
