module Next.Font.Google.Flamenco where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import flamencoImpl :: forall r. { | r } -> FontConfig

flamenco :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
flamenco = flamencoImpl
