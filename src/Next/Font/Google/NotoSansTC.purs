module Next.Font.Google.NotoSansTC where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansTCImpl :: forall r. { | r } -> FontConfig

notoSansTC :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansTC = notoSansTCImpl
