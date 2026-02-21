module Next.Font.Google.Murecho where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import murechoImpl :: forall r. { | r } -> FontConfig

murecho :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
murecho = murechoImpl
