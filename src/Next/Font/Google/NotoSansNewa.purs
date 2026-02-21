module Next.Font.Google.NotoSansNewa where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansNewaImpl :: forall r. { | r } -> FontConfig

notoSansNewa :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansNewa = notoSansNewaImpl
