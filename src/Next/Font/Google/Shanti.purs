module Next.Font.Google.Shanti where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import shantiImpl :: forall r. { | r } -> FontConfig

shanti :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
shanti = shantiImpl
