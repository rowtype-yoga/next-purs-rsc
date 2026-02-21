module Next.Font.Google.ProzaLibre where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import prozaLibreImpl :: forall r. { | r } -> FontConfig

prozaLibre :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
prozaLibre = prozaLibreImpl
