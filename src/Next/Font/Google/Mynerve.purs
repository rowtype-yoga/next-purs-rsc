module Next.Font.Google.Mynerve where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import mynerveImpl :: forall r. { | r } -> FontConfig

mynerve :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
mynerve = mynerveImpl
