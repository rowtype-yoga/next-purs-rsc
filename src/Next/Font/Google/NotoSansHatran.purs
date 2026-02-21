module Next.Font.Google.NotoSansHatran where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansHatranImpl :: forall r. { | r } -> FontConfig

notoSansHatran :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansHatran = notoSansHatranImpl
