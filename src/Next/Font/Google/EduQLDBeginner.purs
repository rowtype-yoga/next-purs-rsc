module Next.Font.Google.EduQLDBeginner where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import eduQLDBeginnerImpl :: forall r. { | r } -> FontConfig

eduQLDBeginner :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
eduQLDBeginner = eduQLDBeginnerImpl
