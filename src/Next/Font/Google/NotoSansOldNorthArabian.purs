module Next.Font.Google.NotoSansOldNorthArabian where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansOldNorthArabianImpl :: forall r. { | r } -> FontConfig

notoSansOldNorthArabian :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansOldNorthArabian = notoSansOldNorthArabianImpl
