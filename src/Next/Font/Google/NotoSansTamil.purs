module Next.Font.Google.NotoSansTamil where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansTamilImpl :: forall r. { | r } -> FontConfig

notoSansTamil :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansTamil = notoSansTamilImpl
