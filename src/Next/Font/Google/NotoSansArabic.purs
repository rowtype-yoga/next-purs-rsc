module Next.Font.Google.NotoSansArabic where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansArabicImpl :: forall r. { | r } -> FontConfig

notoSansArabic :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansArabic = notoSansArabicImpl
