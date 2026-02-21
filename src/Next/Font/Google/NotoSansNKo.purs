module Next.Font.Google.NotoSansNKo where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansNKoImpl :: forall r. { | r } -> FontConfig

notoSansNKo :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansNKo = notoSansNKoImpl
