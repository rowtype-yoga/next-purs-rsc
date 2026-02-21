module Next.Font.Google.Ponomar where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import ponomarImpl :: forall r. { | r } -> FontConfig

ponomar :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
ponomar = ponomarImpl
