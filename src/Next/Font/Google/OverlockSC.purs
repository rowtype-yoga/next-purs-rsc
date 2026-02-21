module Next.Font.Google.OverlockSC where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import overlockSCImpl :: forall r. { | r } -> FontConfig

overlockSC :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
overlockSC = overlockSCImpl
