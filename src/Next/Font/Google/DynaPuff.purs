module Next.Font.Google.DynaPuff where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import dynaPuffImpl :: forall r. { | r } -> FontConfig

dynaPuff :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
dynaPuff = dynaPuffImpl
