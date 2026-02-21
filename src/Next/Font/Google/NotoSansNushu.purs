module Next.Font.Google.NotoSansNushu where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansNushuImpl :: forall r. { | r } -> FontConfig

notoSansNushu :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansNushu = notoSansNushuImpl
