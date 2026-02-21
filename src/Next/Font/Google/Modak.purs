module Next.Font.Google.Modak where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import modakImpl :: forall r. { | r } -> FontConfig

modak :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
modak = modakImpl
