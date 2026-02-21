module Next.Font.Google.NotoSansRunic where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansRunicImpl :: forall r. { | r } -> FontConfig

notoSansRunic :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansRunic = notoSansRunicImpl
