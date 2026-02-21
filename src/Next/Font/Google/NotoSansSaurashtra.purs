module Next.Font.Google.NotoSansSaurashtra where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansSaurashtraImpl :: forall r. { | r } -> FontConfig

notoSansSaurashtra :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansSaurashtra = notoSansSaurashtraImpl
