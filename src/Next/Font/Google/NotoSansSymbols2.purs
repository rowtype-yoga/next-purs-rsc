module Next.Font.Google.NotoSansSymbols2 where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansSymbols2Impl :: forall r. { | r } -> FontConfig

notoSansSymbols2 :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansSymbols2 = notoSansSymbols2Impl
