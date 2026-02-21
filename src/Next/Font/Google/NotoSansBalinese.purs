module Next.Font.Google.NotoSansBalinese where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansBalineseImpl :: forall r. { | r } -> FontConfig

notoSansBalinese :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansBalinese = notoSansBalineseImpl
