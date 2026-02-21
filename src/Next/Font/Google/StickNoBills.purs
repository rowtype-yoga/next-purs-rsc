module Next.Font.Google.StickNoBills where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import stickNoBillsImpl :: forall r. { | r } -> FontConfig

stickNoBills :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
stickNoBills = stickNoBillsImpl
