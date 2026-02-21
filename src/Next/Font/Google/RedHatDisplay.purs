module Next.Font.Google.RedHatDisplay where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import redHatDisplayImpl :: forall r. { | r } -> FontConfig

redHatDisplay :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
redHatDisplay = redHatDisplayImpl
