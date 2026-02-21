module Next.Font.Google.PlayfairDisplaySC where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import playfairDisplaySCImpl :: forall r. { | r } -> FontConfig

playfairDisplaySC :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
playfairDisplaySC = playfairDisplaySCImpl
