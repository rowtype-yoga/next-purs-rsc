module Next.Font.Google.NotoSansAnatolianHieroglyphs where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansAnatolianHieroglyphsImpl :: forall r. { | r } -> FontConfig

notoSansAnatolianHieroglyphs :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansAnatolianHieroglyphs = notoSansAnatolianHieroglyphsImpl
