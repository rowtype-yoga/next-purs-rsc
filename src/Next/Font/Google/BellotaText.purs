module Next.Font.Google.BellotaText where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import bellotaTextImpl :: forall r. { | r } -> FontConfig

bellotaText :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
bellotaText = bellotaTextImpl
