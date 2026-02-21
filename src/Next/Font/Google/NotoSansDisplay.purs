module Next.Font.Google.NotoSansDisplay where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansDisplayImpl :: forall r. { | r } -> FontConfig

notoSansDisplay :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansDisplay = notoSansDisplayImpl
