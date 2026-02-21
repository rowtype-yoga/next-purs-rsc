module Next.Font.Google.Gantari where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import gantariImpl :: forall r. { | r } -> FontConfig

gantari :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
gantari = gantariImpl
