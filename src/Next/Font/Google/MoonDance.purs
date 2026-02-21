module Next.Font.Google.MoonDance where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import moonDanceImpl :: forall r. { | r } -> FontConfig

moonDance :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
moonDance = moonDanceImpl
