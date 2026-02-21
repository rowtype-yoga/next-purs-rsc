module Next.Font.Google.NotoSansOldSogdian where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansOldSogdianImpl :: forall r. { | r } -> FontConfig

notoSansOldSogdian :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansOldSogdian = notoSansOldSogdianImpl
