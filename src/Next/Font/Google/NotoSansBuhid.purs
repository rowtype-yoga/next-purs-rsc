module Next.Font.Google.NotoSansBuhid where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansBuhidImpl :: forall r. { | r } -> FontConfig

notoSansBuhid :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansBuhid = notoSansBuhidImpl
