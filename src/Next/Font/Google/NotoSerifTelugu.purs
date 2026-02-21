module Next.Font.Google.NotoSerifTelugu where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSerifTeluguImpl :: forall r. { | r } -> FontConfig

notoSerifTelugu :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSerifTelugu = notoSerifTeluguImpl
