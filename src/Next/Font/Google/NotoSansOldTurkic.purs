module Next.Font.Google.NotoSansOldTurkic where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansOldTurkicImpl :: forall r. { | r } -> FontConfig

notoSansOldTurkic :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansOldTurkic = notoSansOldTurkicImpl
