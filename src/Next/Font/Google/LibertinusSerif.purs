module Next.Font.Google.LibertinusSerif where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import libertinusSerifImpl :: forall r. { | r } -> FontConfig

libertinusSerif :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
libertinusSerif = libertinusSerifImpl
