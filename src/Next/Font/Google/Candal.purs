module Next.Font.Google.Candal where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import candalImpl :: forall r. { | r } -> FontConfig

candal :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
candal = candalImpl
