module Next.Font.Google.TradeWinds where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import tradeWindsImpl :: forall r. { | r } -> FontConfig

tradeWinds :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
tradeWinds = tradeWindsImpl
