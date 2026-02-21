module Next.Font.Google.TiroTelugu where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import tiroTeluguImpl :: forall r. { | r } -> FontConfig

tiroTelugu :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
tiroTelugu = tiroTeluguImpl
