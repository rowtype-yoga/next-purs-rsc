module Next.Font.Google.Rambla where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import ramblaImpl :: forall r. { | r } -> FontConfig

rambla :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
rambla = ramblaImpl
