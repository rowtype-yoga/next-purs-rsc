module Next.Font.Google.Cabin where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import cabinImpl :: forall r. { | r } -> FontConfig

cabin :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
cabin = cabinImpl
