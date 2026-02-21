module Next.Font.Google.IBMPlexSansArabic where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import iBMPlexSansArabicImpl :: forall r. { | r } -> FontConfig

iBMPlexSansArabic :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
iBMPlexSansArabic = iBMPlexSansArabicImpl
