module Next.Font.Google.Rubik80sFade where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import rubik80sFadeImpl :: forall r. { | r } -> FontConfig

rubik80sFade :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
rubik80sFade = rubik80sFadeImpl
