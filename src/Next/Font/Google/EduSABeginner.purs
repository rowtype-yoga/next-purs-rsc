module Next.Font.Google.EduSABeginner where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import eduSABeginnerImpl :: forall r. { | r } -> FontConfig

eduSABeginner :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
eduSABeginner = eduSABeginnerImpl
