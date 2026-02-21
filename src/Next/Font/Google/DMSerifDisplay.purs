module Next.Font.Google.DMSerifDisplay where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import dMSerifDisplayImpl :: forall r. { | r } -> FontConfig

dMSerifDisplay :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
dMSerifDisplay = dMSerifDisplayImpl
