module Next.Font.Google.Ranga where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import rangaImpl :: forall r. { | r } -> FontConfig

ranga :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
ranga = rangaImpl
