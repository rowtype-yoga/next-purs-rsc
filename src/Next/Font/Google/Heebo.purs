module Next.Font.Google.Heebo where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import heeboImpl :: forall r. { | r } -> FontConfig

heebo :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
heebo = heeboImpl
