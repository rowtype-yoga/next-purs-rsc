module Next.Font.Google.LibertinusSerifDisplay where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import libertinusSerifDisplayImpl :: forall r. { | r } -> FontConfig

libertinusSerifDisplay :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
libertinusSerifDisplay = libertinusSerifDisplayImpl
