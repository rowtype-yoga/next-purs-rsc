module Next.Font.Google.NotoSansSylotiNagri where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansSylotiNagriImpl :: forall r. { | r } -> FontConfig

notoSansSylotiNagri :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansSylotiNagri = notoSansSylotiNagriImpl
