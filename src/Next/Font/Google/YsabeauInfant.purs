module Next.Font.Google.YsabeauInfant where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import ysabeauInfantImpl :: forall r. { | r } -> FontConfig

ysabeauInfant :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
ysabeauInfant = ysabeauInfantImpl
