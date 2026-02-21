module Next.Font.Google.EduVICWANTHand where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import eduVICWANTHandImpl :: forall r. { | r } -> FontConfig

eduVICWANTHand :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
eduVICWANTHand = eduVICWANTHandImpl
