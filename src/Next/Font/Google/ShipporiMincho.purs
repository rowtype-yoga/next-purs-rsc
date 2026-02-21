module Next.Font.Google.ShipporiMincho where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import shipporiMinchoImpl :: forall r. { | r } -> FontConfig

shipporiMincho :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
shipporiMincho = shipporiMinchoImpl
