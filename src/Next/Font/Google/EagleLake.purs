module Next.Font.Google.EagleLake where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import eagleLakeImpl :: forall r. { | r } -> FontConfig

eagleLake :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
eagleLake = eagleLakeImpl
