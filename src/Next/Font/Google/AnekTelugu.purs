module Next.Font.Google.AnekTelugu where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import anekTeluguImpl :: forall r. { | r } -> FontConfig

anekTelugu :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
anekTelugu = anekTeluguImpl
