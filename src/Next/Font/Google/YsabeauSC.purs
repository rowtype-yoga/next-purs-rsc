module Next.Font.Google.YsabeauSC where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import ysabeauSCImpl :: forall r. { | r } -> FontConfig

ysabeauSC :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
ysabeauSC = ysabeauSCImpl
