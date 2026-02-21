module Next.Font.Google.AntonSC where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import antonSCImpl :: forall r. { | r } -> FontConfig

antonSC :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
antonSC = antonSCImpl
