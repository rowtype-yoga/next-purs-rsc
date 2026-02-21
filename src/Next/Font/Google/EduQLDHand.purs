module Next.Font.Google.EduQLDHand where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import eduQLDHandImpl :: forall r. { | r } -> FontConfig

eduQLDHand :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
eduQLDHand = eduQLDHandImpl
