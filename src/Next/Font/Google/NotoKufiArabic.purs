module Next.Font.Google.NotoKufiArabic where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoKufiArabicImpl :: forall r. { | r } -> FontConfig

notoKufiArabic :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoKufiArabic = notoKufiArabicImpl
