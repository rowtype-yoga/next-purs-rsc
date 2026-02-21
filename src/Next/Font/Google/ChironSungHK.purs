module Next.Font.Google.ChironSungHK where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import chironSungHKImpl :: forall r. { | r } -> FontConfig

chironSungHK :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
chironSungHK = chironSungHKImpl
