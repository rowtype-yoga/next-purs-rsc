module Next.Font.Google.LavishlyYours where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import lavishlyYoursImpl :: forall r. { | r } -> FontConfig

lavishlyYours :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
lavishlyYours = lavishlyYoursImpl
