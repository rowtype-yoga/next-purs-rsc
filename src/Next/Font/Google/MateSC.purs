module Next.Font.Google.MateSC where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import mateSCImpl :: forall r. { | r } -> FontConfig

mateSC :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
mateSC = mateSCImpl
