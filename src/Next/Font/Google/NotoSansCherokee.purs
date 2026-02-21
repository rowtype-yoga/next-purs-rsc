module Next.Font.Google.NotoSansCherokee where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansCherokeeImpl :: forall r. { | r } -> FontConfig

notoSansCherokee :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansCherokee = notoSansCherokeeImpl
