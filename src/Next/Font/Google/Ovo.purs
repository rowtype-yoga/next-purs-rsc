module Next.Font.Google.Ovo where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import ovoImpl :: forall r. { | r } -> FontConfig

ovo :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
ovo = ovoImpl
