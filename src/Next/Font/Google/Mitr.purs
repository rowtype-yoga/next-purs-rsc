module Next.Font.Google.Mitr where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import mitrImpl :: forall r. { | r } -> FontConfig

mitr :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
mitr = mitrImpl
