module Next.Font.Google.SupermercadoOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import supermercadoOneImpl :: forall r. { | r } -> FontConfig

supermercadoOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
supermercadoOne = supermercadoOneImpl
