module Next.Font.Google.Gudea where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import gudeaImpl :: forall r. { | r } -> FontConfig

gudea :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
gudea = gudeaImpl
