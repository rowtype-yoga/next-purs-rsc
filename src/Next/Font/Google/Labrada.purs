module Next.Font.Google.Labrada where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import labradaImpl :: forall r. { | r } -> FontConfig

labrada :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
labrada = labradaImpl
