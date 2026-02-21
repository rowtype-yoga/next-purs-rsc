module Next.Font.Google.IMFellGreatPrimer where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import iMFellGreatPrimerImpl :: forall r. { | r } -> FontConfig

iMFellGreatPrimer :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
iMFellGreatPrimer = iMFellGreatPrimerImpl
