module Next.Font.Google.NotoSansKawi where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansKawiImpl :: forall r. { | r } -> FontConfig

notoSansKawi :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansKawi = notoSansKawiImpl
