module Next.Font.Google.NotoSansTifinagh where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansTifinaghImpl :: forall r. { | r } -> FontConfig

notoSansTifinagh :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansTifinagh = notoSansTifinaghImpl
