module Next.Font.Google.Electrolize where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import electrolizeImpl :: forall r. { | r } -> FontConfig

electrolize :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
electrolize = electrolizeImpl
