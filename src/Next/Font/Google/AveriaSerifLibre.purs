module Next.Font.Google.AveriaSerifLibre where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import averiaSerifLibreImpl :: forall r. { | r } -> FontConfig

averiaSerifLibre :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
averiaSerifLibre = averiaSerifLibreImpl
