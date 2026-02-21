module Next.Font.Google.AveriaGruesaLibre where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import averiaGruesaLibreImpl :: forall r. { | r } -> FontConfig

averiaGruesaLibre :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
averiaGruesaLibre = averiaGruesaLibreImpl
