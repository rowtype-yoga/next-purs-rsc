module Next.Font.Google.NotoSansDevanagari where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansDevanagariImpl :: forall r. { | r } -> FontConfig

notoSansDevanagari :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansDevanagari = notoSansDevanagariImpl
