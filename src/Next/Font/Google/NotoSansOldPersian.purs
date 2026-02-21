module Next.Font.Google.NotoSansOldPersian where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansOldPersianImpl :: forall r. { | r } -> FontConfig

notoSansOldPersian :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansOldPersian = notoSansOldPersianImpl
