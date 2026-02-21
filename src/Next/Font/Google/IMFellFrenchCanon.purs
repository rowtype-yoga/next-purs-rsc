module Next.Font.Google.IMFellFrenchCanon where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import iMFellFrenchCanonImpl :: forall r. { | r } -> FontConfig

iMFellFrenchCanon :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
iMFellFrenchCanon = iMFellFrenchCanonImpl
