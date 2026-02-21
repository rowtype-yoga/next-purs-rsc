module Next.Font.Google.Raleway where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import ralewayImpl :: forall r. { | r } -> FontConfig

raleway :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
raleway = ralewayImpl
