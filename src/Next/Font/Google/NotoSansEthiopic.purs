module Next.Font.Google.NotoSansEthiopic where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansEthiopicImpl :: forall r. { | r } -> FontConfig

notoSansEthiopic :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansEthiopic = notoSansEthiopicImpl
