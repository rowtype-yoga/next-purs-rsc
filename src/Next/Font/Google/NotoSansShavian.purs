module Next.Font.Google.NotoSansShavian where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansShavianImpl :: forall r. { | r } -> FontConfig

notoSansShavian :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansShavian = notoSansShavianImpl
