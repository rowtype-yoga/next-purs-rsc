module Next.Font.Google.Sarpanch where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import sarpanchImpl :: forall r. { | r } -> FontConfig

sarpanch :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
sarpanch = sarpanchImpl
