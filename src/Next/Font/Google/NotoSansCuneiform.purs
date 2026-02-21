module Next.Font.Google.NotoSansCuneiform where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansCuneiformImpl :: forall r. { | r } -> FontConfig

notoSansCuneiform :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansCuneiform = notoSansCuneiformImpl
