module Next.Font.Google.Tinos where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import tinosImpl :: forall r. { | r } -> FontConfig

tinos :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
tinos = tinosImpl
