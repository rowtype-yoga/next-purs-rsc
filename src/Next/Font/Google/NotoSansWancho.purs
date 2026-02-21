module Next.Font.Google.NotoSansWancho where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansWanchoImpl :: forall r. { | r } -> FontConfig

notoSansWancho :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansWancho = notoSansWanchoImpl
