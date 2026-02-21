module Next.Font.Google.NotoSansLinearB where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansLinearBImpl :: forall r. { | r } -> FontConfig

notoSansLinearB :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansLinearB = notoSansLinearBImpl
