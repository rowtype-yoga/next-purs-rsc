module Next.Font.Google.Palanquin where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import palanquinImpl :: forall r. { | r } -> FontConfig

palanquin :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
palanquin = palanquinImpl
