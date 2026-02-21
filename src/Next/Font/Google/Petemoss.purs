module Next.Font.Google.Petemoss where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import petemossImpl :: forall r. { | r } -> FontConfig

petemoss :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
petemoss = petemossImpl
