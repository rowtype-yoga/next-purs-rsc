module Next.Font.Google.AveriaSansLibre where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import averiaSansLibreImpl :: forall r. { | r } -> FontConfig

averiaSansLibre :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
averiaSansLibre = averiaSansLibreImpl
