module Next.Font.Google.NotoSansMalayalam where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansMalayalamImpl :: forall r. { | r } -> FontConfig

notoSansMalayalam :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansMalayalam = notoSansMalayalamImpl
