module Next.Font.Google.Unna where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import unnaImpl :: forall r. { | r } -> FontConfig

unna :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
unna = unnaImpl
