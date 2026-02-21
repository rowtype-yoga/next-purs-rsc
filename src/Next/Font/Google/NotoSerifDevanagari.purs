module Next.Font.Google.NotoSerifDevanagari where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSerifDevanagariImpl :: forall r. { | r } -> FontConfig

notoSerifDevanagari :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSerifDevanagari = notoSerifDevanagariImpl
