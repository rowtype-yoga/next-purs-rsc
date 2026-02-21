module Next.Font.Google.NotoSansOldHungarian where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansOldHungarianImpl :: forall r. { | r } -> FontConfig

notoSansOldHungarian :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansOldHungarian = notoSansOldHungarianImpl
