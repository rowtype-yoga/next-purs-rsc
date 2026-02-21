module Next.Font.Google.NotoSansEgyptianHieroglyphs where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansEgyptianHieroglyphsImpl :: forall r. { | r } -> FontConfig

notoSansEgyptianHieroglyphs :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansEgyptianHieroglyphs = notoSansEgyptianHieroglyphsImpl
