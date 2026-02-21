module Next.Font.Google.Sen where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import senImpl :: forall r. { | r } -> FontConfig

sen :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
sen = senImpl
