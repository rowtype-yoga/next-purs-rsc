module Next.Font.Google.ChironHeiHK where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import chironHeiHKImpl :: forall r. { | r } -> FontConfig

chironHeiHK :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
chironHeiHK = chironHeiHKImpl
