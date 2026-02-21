module Next.Font.Google.EduTASBeginner where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import eduTASBeginnerImpl :: forall r. { | r } -> FontConfig

eduTASBeginner :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
eduTASBeginner = eduTASBeginnerImpl
