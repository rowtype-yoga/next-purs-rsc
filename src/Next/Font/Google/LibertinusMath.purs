module Next.Font.Google.LibertinusMath where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import libertinusMathImpl :: forall r. { | r } -> FontConfig

libertinusMath :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
libertinusMath = libertinusMathImpl
