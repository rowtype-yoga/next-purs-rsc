module Next.Font.Google.NotoSansOldItalic where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansOldItalicImpl :: forall r. { | r } -> FontConfig

notoSansOldItalic :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansOldItalic = notoSansOldItalicImpl
