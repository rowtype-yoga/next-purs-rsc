module Next.Font.Google.NotoSansCyproMinoan where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansCyproMinoanImpl :: forall r. { | r } -> FontConfig

notoSansCyproMinoan :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansCyproMinoan = notoSansCyproMinoanImpl
