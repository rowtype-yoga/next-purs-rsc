module Next.Font.Google.Dorsa where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import dorsaImpl :: forall r. { | r } -> FontConfig

dorsa :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
dorsa = dorsaImpl
