module Next.Font.Google.SawarabiMincho where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import sawarabiMinchoImpl :: forall r. { | r } -> FontConfig

sawarabiMincho :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
sawarabiMincho = sawarabiMinchoImpl
