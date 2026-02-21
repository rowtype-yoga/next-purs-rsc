module Next.Font.Google.NovaSlim where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import novaSlimImpl :: forall r. { | r } -> FontConfig

novaSlim :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
novaSlim = novaSlimImpl
