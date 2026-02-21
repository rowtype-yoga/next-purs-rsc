module Next.Font.Google.YsabeauOffice where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import ysabeauOfficeImpl :: forall r. { | r } -> FontConfig

ysabeauOffice :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
ysabeauOffice = ysabeauOfficeImpl
