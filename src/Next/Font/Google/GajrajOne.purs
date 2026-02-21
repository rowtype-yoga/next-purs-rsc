module Next.Font.Google.GajrajOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import gajrajOneImpl :: forall r. { | r } -> FontConfig

gajrajOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
gajrajOne = gajrajOneImpl
