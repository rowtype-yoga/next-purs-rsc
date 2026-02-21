module Next.Font.Google.AoboshiOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import aoboshiOneImpl :: forall r. { | r } -> FontConfig

aoboshiOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
aoboshiOne = aoboshiOneImpl
