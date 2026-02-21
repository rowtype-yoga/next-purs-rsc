module Next.Font.Google.Trykker where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import trykkerImpl :: forall r. { | r } -> FontConfig

trykker :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
trykker = trykkerImpl
