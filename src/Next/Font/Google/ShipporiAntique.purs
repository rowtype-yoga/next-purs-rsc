module Next.Font.Google.ShipporiAntique where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import shipporiAntiqueImpl :: forall r. { | r } -> FontConfig

shipporiAntique :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
shipporiAntique = shipporiAntiqueImpl
