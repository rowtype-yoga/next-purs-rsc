module Next.Font.Google.LibertinusMono where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import libertinusMonoImpl :: forall r. { | r } -> FontConfig

libertinusMono :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
libertinusMono = libertinusMonoImpl
