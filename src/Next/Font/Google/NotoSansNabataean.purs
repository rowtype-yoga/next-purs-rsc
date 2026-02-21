module Next.Font.Google.NotoSansNabataean where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansNabataeanImpl :: forall r. { | r } -> FontConfig

notoSansNabataean :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansNabataean = notoSansNabataeanImpl
