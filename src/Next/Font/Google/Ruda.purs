module Next.Font.Google.Ruda where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import rudaImpl :: forall r. { | r } -> FontConfig

ruda :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
ruda = rudaImpl
