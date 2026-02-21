module Next.Font.Google.Bevan where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import bevanImpl :: forall r. { | r } -> FontConfig

bevan :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
bevan = bevanImpl
