module Next.Font.Google.Charm where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import charmImpl :: forall r. { | r } -> FontConfig

charm :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
charm = charmImpl
