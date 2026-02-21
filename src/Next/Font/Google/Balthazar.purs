module Next.Font.Google.Balthazar where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import balthazarImpl :: forall r. { | r } -> FontConfig

balthazar :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
balthazar = balthazarImpl
