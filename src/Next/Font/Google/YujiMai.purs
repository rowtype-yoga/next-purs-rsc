module Next.Font.Google.YujiMai where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import yujiMaiImpl :: forall r. { | r } -> FontConfig

yujiMai :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
yujiMai = yujiMaiImpl
