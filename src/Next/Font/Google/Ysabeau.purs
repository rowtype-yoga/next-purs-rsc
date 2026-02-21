module Next.Font.Google.Ysabeau where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import ysabeauImpl :: forall r. { | r } -> FontConfig

ysabeau :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
ysabeau = ysabeauImpl
