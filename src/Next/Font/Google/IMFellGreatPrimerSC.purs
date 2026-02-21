module Next.Font.Google.IMFellGreatPrimerSC where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import iMFellGreatPrimerSCImpl :: forall r. { | r } -> FontConfig

iMFellGreatPrimerSC :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
iMFellGreatPrimerSC = iMFellGreatPrimerSCImpl
