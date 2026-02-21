module Next.Font.Google.YujiSyuku where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import yujiSyukuImpl :: forall r. { | r } -> FontConfig

yujiSyuku :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
yujiSyuku = yujiSyukuImpl
