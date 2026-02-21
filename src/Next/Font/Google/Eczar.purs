module Next.Font.Google.Eczar where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import eczarImpl :: forall r. { | r } -> FontConfig

eczar :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
eczar = eczarImpl
