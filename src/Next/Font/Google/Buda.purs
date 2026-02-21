module Next.Font.Google.Buda where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import budaImpl :: forall r. { | r } -> FontConfig

buda :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
buda = budaImpl
