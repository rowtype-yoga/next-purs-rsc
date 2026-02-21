module Next.Font.Google.NotoNaskhArabic where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoNaskhArabicImpl :: forall r. { | r } -> FontConfig

notoNaskhArabic :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoNaskhArabic = notoNaskhArabicImpl
