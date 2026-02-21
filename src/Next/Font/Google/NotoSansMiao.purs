module Next.Font.Google.NotoSansMiao where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansMiaoImpl :: forall r. { | r } -> FontConfig

notoSansMiao :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansMiao = notoSansMiaoImpl
