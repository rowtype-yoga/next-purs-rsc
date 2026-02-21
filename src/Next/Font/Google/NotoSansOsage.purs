module Next.Font.Google.NotoSansOsage where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansOsageImpl :: forall r. { | r } -> FontConfig

notoSansOsage :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansOsage = notoSansOsageImpl
