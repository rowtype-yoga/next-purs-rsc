module Next.Font.Google.SpectralSC where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import spectralSCImpl :: forall r. { | r } -> FontConfig

spectralSC :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
spectralSC = spectralSCImpl
