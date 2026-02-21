module Next.Font.Google.NotoSansJP where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansJPImpl :: forall r. { | r } -> FontConfig

notoSansJP :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansJP = notoSansJPImpl
