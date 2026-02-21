module Next.Font.Google.Freeman where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import freemanImpl :: forall r. { | r } -> FontConfig

freeman :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
freeman = freemanImpl
