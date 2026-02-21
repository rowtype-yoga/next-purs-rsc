module Next.Font.Google.Spectral where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import spectralImpl :: forall r. { | r } -> FontConfig

spectral :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
spectral = spectralImpl
