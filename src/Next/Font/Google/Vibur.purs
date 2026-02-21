module Next.Font.Google.Vibur where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import viburImpl :: forall r. { | r } -> FontConfig

vibur :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
vibur = viburImpl
