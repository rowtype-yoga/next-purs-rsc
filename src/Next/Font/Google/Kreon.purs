module Next.Font.Google.Kreon where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import kreonImpl :: forall r. { | r } -> FontConfig

kreon :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
kreon = kreonImpl
