module Next.Font.Google.NotoSansNandinagari where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansNandinagariImpl :: forall r. { | r } -> FontConfig

notoSansNandinagari :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansNandinagari = notoSansNandinagariImpl
