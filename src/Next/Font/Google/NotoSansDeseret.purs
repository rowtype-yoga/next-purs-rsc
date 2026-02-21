module Next.Font.Google.NotoSansDeseret where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansDeseretImpl :: forall r. { | r } -> FontConfig

notoSansDeseret :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansDeseret = notoSansDeseretImpl
