module Next.Font.Google.Oxygen where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import oxygenImpl :: forall r. { | r } -> FontConfig

oxygen :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
oxygen = oxygenImpl
