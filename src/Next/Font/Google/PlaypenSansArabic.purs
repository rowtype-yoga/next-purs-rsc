module Next.Font.Google.PlaypenSansArabic where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import playpenSansArabicImpl :: forall r. { | r } -> FontConfig

playpenSansArabic :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
playpenSansArabic = playpenSansArabicImpl
