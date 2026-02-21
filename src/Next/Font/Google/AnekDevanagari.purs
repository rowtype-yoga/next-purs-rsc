module Next.Font.Google.AnekDevanagari where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import anekDevanagariImpl :: forall r. { | r } -> FontConfig

anekDevanagari :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
anekDevanagari = anekDevanagariImpl
