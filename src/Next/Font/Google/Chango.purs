module Next.Font.Google.Chango where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import changoImpl :: forall r. { | r } -> FontConfig

chango :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
chango = changoImpl
