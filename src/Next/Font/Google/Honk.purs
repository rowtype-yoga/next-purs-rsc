module Next.Font.Google.Honk where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import honkImpl :: forall r. { | r } -> FontConfig

honk :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
honk = honkImpl
