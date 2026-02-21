module Next.Font.Google.IMFellFrenchCanonSC where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import iMFellFrenchCanonSCImpl :: forall r. { | r } -> FontConfig

iMFellFrenchCanonSC :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
iMFellFrenchCanonSC = iMFellFrenchCanonSCImpl
