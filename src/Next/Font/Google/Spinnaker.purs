module Next.Font.Google.Spinnaker where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import spinnakerImpl :: forall r. { | r } -> FontConfig

spinnaker :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
spinnaker = spinnakerImpl
