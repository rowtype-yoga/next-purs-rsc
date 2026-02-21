module Next.Font.Google.NotoSansTakri where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansTakriImpl :: forall r. { | r } -> FontConfig

notoSansTakri :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansTakri = notoSansTakriImpl
