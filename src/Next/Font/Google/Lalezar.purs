module Next.Font.Google.Lalezar where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import lalezarImpl :: forall r. { | r } -> FontConfig

lalezar :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
lalezar = lalezarImpl
