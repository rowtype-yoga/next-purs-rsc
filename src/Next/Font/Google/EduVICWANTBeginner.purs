module Next.Font.Google.EduVICWANTBeginner where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import eduVICWANTBeginnerImpl :: forall r. { | r } -> FontConfig

eduVICWANTBeginner :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
eduVICWANTBeginner = eduVICWANTBeginnerImpl
