module Next.Font.Google.Risque where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import risqueImpl :: forall r. { | r } -> FontConfig

risque :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
risque = risqueImpl
