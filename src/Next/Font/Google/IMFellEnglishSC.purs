module Next.Font.Google.IMFellEnglishSC where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import iMFellEnglishSCImpl :: forall r. { | r } -> FontConfig

iMFellEnglishSC :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
iMFellEnglishSC = iMFellEnglishSCImpl
