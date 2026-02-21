module Next.Font.Google.REM where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import rEMImpl :: forall r. { | r } -> FontConfig

rEM :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
rEM = rEMImpl
