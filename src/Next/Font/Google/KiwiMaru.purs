module Next.Font.Google.KiwiMaru where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import kiwiMaruImpl :: forall r. { | r } -> FontConfig

kiwiMaru :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
kiwiMaru = kiwiMaruImpl
