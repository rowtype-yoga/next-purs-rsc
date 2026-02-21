module Next.Font.Google.Creepster where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import creepsterImpl :: forall r. { | r } -> FontConfig

creepster :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
creepster = creepsterImpl
