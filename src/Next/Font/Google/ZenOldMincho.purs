module Next.Font.Google.ZenOldMincho where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import zenOldMinchoImpl :: forall r. { | r } -> FontConfig

zenOldMincho :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
zenOldMincho = zenOldMinchoImpl
