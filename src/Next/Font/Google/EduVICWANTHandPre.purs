module Next.Font.Google.EduVICWANTHandPre where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import eduVICWANTHandPreImpl :: forall r. { | r } -> FontConfig

eduVICWANTHandPre :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
eduVICWANTHandPre = eduVICWANTHandPreImpl
