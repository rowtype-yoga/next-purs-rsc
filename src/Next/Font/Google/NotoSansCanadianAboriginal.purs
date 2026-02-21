module Next.Font.Google.NotoSansCanadianAboriginal where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansCanadianAboriginalImpl :: forall r. { | r } -> FontConfig

notoSansCanadianAboriginal :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansCanadianAboriginal = notoSansCanadianAboriginalImpl
