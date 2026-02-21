module Next.Font.Google.Zain where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import zainImpl :: forall r. { | r } -> FontConfig

zain :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
zain = zainImpl
