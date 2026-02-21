module Next.Font.Google.Arima where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import arimaImpl :: forall r. { | r } -> FontConfig

arima :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
arima = arimaImpl
