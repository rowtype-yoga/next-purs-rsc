module Next.Font.Google.OleoScript where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import oleoScriptImpl :: forall r. { | r } -> FontConfig

oleoScript :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
oleoScript = oleoScriptImpl
