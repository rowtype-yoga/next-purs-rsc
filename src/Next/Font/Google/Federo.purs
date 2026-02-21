module Next.Font.Google.Federo where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import federoImpl :: forall r. { | r } -> FontConfig

federo :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
federo = federoImpl
