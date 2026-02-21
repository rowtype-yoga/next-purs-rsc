module Next.Font.Google.NotoSansTaiViet where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansTaiVietImpl :: forall r. { | r } -> FontConfig

notoSansTaiViet :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansTaiViet = notoSansTaiVietImpl
