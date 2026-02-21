module Next.Font.Google.ViaodaLibre where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import viaodaLibreImpl :: forall r. { | r } -> FontConfig

viaodaLibre :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
viaodaLibre = viaodaLibreImpl
