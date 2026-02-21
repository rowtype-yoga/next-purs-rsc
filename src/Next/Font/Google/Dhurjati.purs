module Next.Font.Google.Dhurjati where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import dhurjatiImpl :: forall r. { | r } -> FontConfig

dhurjati :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
dhurjati = dhurjatiImpl
