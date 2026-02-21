module Next.Font.Google.NovaScript where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import novaScriptImpl :: forall r. { | r } -> FontConfig

novaScript :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
novaScript = novaScriptImpl
