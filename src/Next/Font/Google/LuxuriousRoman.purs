module Next.Font.Google.LuxuriousRoman where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import luxuriousRomanImpl :: forall r. { | r } -> FontConfig

luxuriousRoman :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
luxuriousRoman = luxuriousRomanImpl
