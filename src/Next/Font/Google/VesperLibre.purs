module Next.Font.Google.VesperLibre where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import vesperLibreImpl :: forall r. { | r } -> FontConfig

vesperLibre :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
vesperLibre = vesperLibreImpl
