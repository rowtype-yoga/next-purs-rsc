module Next.Font.Google.NotoSansTelugu where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansTeluguImpl :: forall r. { | r } -> FontConfig

notoSansTelugu :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansTelugu = notoSansTeluguImpl
