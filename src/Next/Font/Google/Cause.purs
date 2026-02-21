module Next.Font.Google.Cause where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import causeImpl :: forall r. { | r } -> FontConfig

cause :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
cause = causeImpl
