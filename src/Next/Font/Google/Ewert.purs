module Next.Font.Google.Ewert where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import ewertImpl :: forall r. { | r } -> FontConfig

ewert :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
ewert = ewertImpl
