module Next.Font.Google.Stick where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import stickImpl :: forall r. { | r } -> FontConfig

stick :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
stick = stickImpl
