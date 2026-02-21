module Next.Font.Google.IMFellDWPicaSC where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import iMFellDWPicaSCImpl :: forall r. { | r } -> FontConfig

iMFellDWPicaSC :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
iMFellDWPicaSC = iMFellDWPicaSCImpl
