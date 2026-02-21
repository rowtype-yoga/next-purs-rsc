module Next.Font.Google.UncialAntiqua where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import uncialAntiquaImpl :: forall r. { | r } -> FontConfig

uncialAntiqua :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
uncialAntiqua = uncialAntiquaImpl
