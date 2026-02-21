module Next.Font.Google.NotoSansSiddham where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansSiddhamImpl :: forall r. { | r } -> FontConfig

notoSansSiddham :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansSiddham = notoSansSiddhamImpl
