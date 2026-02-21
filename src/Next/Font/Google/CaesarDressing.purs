module Next.Font.Google.CaesarDressing where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import caesarDressingImpl :: forall r. { | r } -> FontConfig

caesarDressing :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
caesarDressing = caesarDressingImpl
