module Next.Font.Google.EduAUVICWANTPre where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import eduAUVICWANTPreImpl :: forall r. { | r } -> FontConfig

eduAUVICWANTPre :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
eduAUVICWANTPre = eduAUVICWANTPreImpl
