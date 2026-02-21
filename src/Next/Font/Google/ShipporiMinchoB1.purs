module Next.Font.Google.ShipporiMinchoB1 where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import shipporiMinchoB1Impl :: forall r. { | r } -> FontConfig

shipporiMinchoB1 :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
shipporiMinchoB1 = shipporiMinchoB1Impl
