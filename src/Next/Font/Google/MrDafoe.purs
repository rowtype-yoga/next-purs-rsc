module Next.Font.Google.MrDafoe where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import mrDafoeImpl :: forall r. { | r } -> FontConfig

mrDafoe :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
mrDafoe = mrDafoeImpl
