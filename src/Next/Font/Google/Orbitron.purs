module Next.Font.Google.Orbitron where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import orbitronImpl :: forall r. { | r } -> FontConfig

orbitron :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
orbitron = orbitronImpl
