module Next.Font.Google.EduNSWACTCursive where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import eduNSWACTCursiveImpl :: forall r. { | r } -> FontConfig

eduNSWACTCursive :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
eduNSWACTCursive = eduNSWACTCursiveImpl
