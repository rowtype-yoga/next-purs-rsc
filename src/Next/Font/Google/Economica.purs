module Next.Font.Google.Economica where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import economicaImpl :: forall r. { | r } -> FontConfig

economica :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
economica = economicaImpl
