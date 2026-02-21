module Next.Font.Google.Sunflower where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import sunflowerImpl :: forall r. { | r } -> FontConfig

sunflower :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
sunflower = sunflowerImpl
