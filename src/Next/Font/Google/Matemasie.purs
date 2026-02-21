module Next.Font.Google.Matemasie where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import matemasieImpl :: forall r. { | r } -> FontConfig

matemasie :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
matemasie = matemasieImpl
