module Next.Font.Google.OxygenMono where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import oxygenMonoImpl :: forall r. { | r } -> FontConfig

oxygenMono :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
oxygenMono = oxygenMonoImpl
