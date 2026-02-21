module Next.Font.Google.NotoSansBassaVah where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansBassaVahImpl :: forall r. { | r } -> FontConfig

notoSansBassaVah :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansBassaVah = notoSansBassaVahImpl
