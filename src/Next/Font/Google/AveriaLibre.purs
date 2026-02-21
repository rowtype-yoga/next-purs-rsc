module Next.Font.Google.AveriaLibre where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import averiaLibreImpl :: forall r. { | r } -> FontConfig

averiaLibre :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
averiaLibre = averiaLibreImpl
