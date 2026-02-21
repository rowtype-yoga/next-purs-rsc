module Next.Font.Google.DMSerifText where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import dMSerifTextImpl :: forall r. { | r } -> FontConfig

dMSerifText :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
dMSerifText = dMSerifTextImpl
