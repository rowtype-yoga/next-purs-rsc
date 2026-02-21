module Next.Font.Google.Sniglet where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import snigletImpl :: forall r. { | r } -> FontConfig

sniglet :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
sniglet = snigletImpl
