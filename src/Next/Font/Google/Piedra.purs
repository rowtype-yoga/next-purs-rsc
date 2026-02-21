module Next.Font.Google.Piedra where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import piedraImpl :: forall r. { | r } -> FontConfig

piedra :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
piedra = piedraImpl
