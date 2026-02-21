module Next.Font.Google.EduSAHand where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import eduSAHandImpl :: forall r. { | r } -> FontConfig

eduSAHand :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
eduSAHand = eduSAHandImpl
