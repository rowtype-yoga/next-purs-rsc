module Next.Font.Google.Bahianita where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import bahianitaImpl :: forall r. { | r } -> FontConfig

bahianita :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
bahianita = bahianitaImpl
