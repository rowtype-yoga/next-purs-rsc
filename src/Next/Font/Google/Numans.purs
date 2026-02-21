module Next.Font.Google.Numans where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import numansImpl :: forall r. { | r } -> FontConfig

numans :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
numans = numansImpl
