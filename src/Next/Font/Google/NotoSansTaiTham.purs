module Next.Font.Google.NotoSansTaiTham where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansTaiThamImpl :: forall r. { | r } -> FontConfig

notoSansTaiTham :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansTaiTham = notoSansTaiThamImpl
