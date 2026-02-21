module Next.Font.Google.NotoSansTangsa where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansTangsaImpl :: forall r. { | r } -> FontConfig

notoSansTangsa :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansTangsa = notoSansTangsaImpl
