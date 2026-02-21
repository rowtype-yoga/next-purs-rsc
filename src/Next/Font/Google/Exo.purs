module Next.Font.Google.Exo where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import exoImpl :: forall r. { | r } -> FontConfig

exo :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
exo = exoImpl
