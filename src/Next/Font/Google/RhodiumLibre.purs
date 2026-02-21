module Next.Font.Google.RhodiumLibre where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import rhodiumLibreImpl :: forall r. { | r } -> FontConfig

rhodiumLibre :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
rhodiumLibre = rhodiumLibreImpl
