module Next.Font.Google.NotoSansGrantha where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansGranthaImpl :: forall r. { | r } -> FontConfig

notoSansGrantha :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansGrantha = notoSansGranthaImpl
