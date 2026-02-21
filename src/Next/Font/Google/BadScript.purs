module Next.Font.Google.BadScript where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import badScriptImpl :: forall r. { | r } -> FontConfig

badScript :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
badScript = badScriptImpl
