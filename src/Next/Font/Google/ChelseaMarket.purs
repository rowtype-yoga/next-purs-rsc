module Next.Font.Google.ChelseaMarket where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import chelseaMarketImpl :: forall r. { | r } -> FontConfig

chelseaMarket :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
chelseaMarket = chelseaMarketImpl
