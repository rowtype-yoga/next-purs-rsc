module Next.Font.Google.DavidLibre where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import davidLibreImpl :: forall r. { | r } -> FontConfig

davidLibre :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
davidLibre = davidLibreImpl
