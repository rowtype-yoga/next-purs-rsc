module Next.Font.Google.SecularOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import secularOneImpl :: forall r. { | r } -> FontConfig

secularOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
secularOne = secularOneImpl
