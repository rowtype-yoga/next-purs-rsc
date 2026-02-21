module Next.Font.Google.ZhiMangXing where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import zhiMangXingImpl :: forall r. { | r } -> FontConfig

zhiMangXing :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
zhiMangXing = zhiMangXingImpl
