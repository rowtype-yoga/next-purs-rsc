module Next.Font.Google.Beiruti where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import beirutiImpl :: forall r. { | r } -> FontConfig

beiruti :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
beiruti = beirutiImpl
