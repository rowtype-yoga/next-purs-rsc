module Next.Font.Google.TiroBangla where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import tiroBanglaImpl :: forall r. { | r } -> FontConfig

tiroBangla :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
tiroBangla = tiroBanglaImpl
