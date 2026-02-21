module Next.Font.Google.IMFellDWPica where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import iMFellDWPicaImpl :: forall r. { | r } -> FontConfig

iMFellDWPica :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
iMFellDWPica = iMFellDWPicaImpl
