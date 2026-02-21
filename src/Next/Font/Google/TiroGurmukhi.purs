module Next.Font.Google.TiroGurmukhi where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import tiroGurmukhiImpl :: forall r. { | r } -> FontConfig

tiroGurmukhi :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
tiroGurmukhi = tiroGurmukhiImpl
