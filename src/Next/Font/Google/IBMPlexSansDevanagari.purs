module Next.Font.Google.IBMPlexSansDevanagari where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import iBMPlexSansDevanagariImpl :: forall r. { | r } -> FontConfig

iBMPlexSansDevanagari :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
iBMPlexSansDevanagari = iBMPlexSansDevanagariImpl
