module Next.Font.Google.AbhayaLibre where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import abhayaLibreImpl :: forall r. { | r } -> FontConfig

abhayaLibre :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
abhayaLibre = abhayaLibreImpl
