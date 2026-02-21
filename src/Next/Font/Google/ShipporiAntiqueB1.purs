module Next.Font.Google.ShipporiAntiqueB1 where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import shipporiAntiqueB1Impl :: forall r. { | r } -> FontConfig

shipporiAntiqueB1 :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
shipporiAntiqueB1 = shipporiAntiqueB1Impl
