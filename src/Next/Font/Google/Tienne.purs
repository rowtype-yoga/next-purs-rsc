module Next.Font.Google.Tienne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import tienneImpl :: forall r. { | r } -> FontConfig

tienne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
tienne = tienneImpl
