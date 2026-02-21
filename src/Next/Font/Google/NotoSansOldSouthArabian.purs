module Next.Font.Google.NotoSansOldSouthArabian where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansOldSouthArabianImpl :: forall r. { | r } -> FontConfig

notoSansOldSouthArabian :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansOldSouthArabian = notoSansOldSouthArabianImpl
