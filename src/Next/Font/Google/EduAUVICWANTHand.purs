module Next.Font.Google.EduAUVICWANTHand where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import eduAUVICWANTHandImpl :: forall r. { | r } -> FontConfig

eduAUVICWANTHand :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
eduAUVICWANTHand = eduAUVICWANTHandImpl
