module Next.Font.Google.NotoSansOlChiki where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansOlChikiImpl :: forall r. { | r } -> FontConfig

notoSansOlChiki :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansOlChiki = notoSansOlChikiImpl
