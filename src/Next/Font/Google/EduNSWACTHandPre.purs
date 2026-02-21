module Next.Font.Google.EduNSWACTHandPre where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import eduNSWACTHandPreImpl :: forall r. { | r } -> FontConfig

eduNSWACTHandPre :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
eduNSWACTHandPre = eduNSWACTHandPreImpl
