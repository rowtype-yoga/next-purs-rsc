module Next.Font.Google.ShantellSans where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import shantellSansImpl :: forall r. { | r } -> FontConfig

shantellSans :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
shantellSans = shantellSansImpl
