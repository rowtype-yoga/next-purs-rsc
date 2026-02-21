module Next.Font.Google.NotoSansHK where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansHKImpl :: forall r. { | r } -> FontConfig

notoSansHK :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansHK = notoSansHKImpl
