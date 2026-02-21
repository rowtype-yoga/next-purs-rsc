module Next.Font.Google.IMFellEnglish where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import iMFellEnglishImpl :: forall r. { | r } -> FontConfig

iMFellEnglish :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
iMFellEnglish = iMFellEnglishImpl
