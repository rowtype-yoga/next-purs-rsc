module Next.Font.Google.JockeyOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import jockeyOneImpl :: forall r. { | r } -> FontConfig

jockeyOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
jockeyOne = jockeyOneImpl
