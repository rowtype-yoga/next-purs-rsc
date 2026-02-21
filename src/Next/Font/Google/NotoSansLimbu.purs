module Next.Font.Google.NotoSansLimbu where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansLimbuImpl :: forall r. { | r } -> FontConfig

notoSansLimbu :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansLimbu = notoSansLimbuImpl
