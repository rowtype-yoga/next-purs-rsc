module Next.Font.Google.NotoSansLinearA where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansLinearAImpl :: forall r. { | r } -> FontConfig

notoSansLinearA :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansLinearA = notoSansLinearAImpl
