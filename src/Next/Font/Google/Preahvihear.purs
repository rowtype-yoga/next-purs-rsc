module Next.Font.Google.Preahvihear where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import preahvihearImpl :: forall r. { | r } -> FontConfig

preahvihear :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
preahvihear = preahvihearImpl
