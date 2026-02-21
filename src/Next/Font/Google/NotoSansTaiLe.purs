module Next.Font.Google.NotoSansTaiLe where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansTaiLeImpl :: forall r. { | r } -> FontConfig

notoSansTaiLe :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansTaiLe = notoSansTaiLeImpl
