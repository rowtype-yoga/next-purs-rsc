module Next.Font.Google.RedactedScript where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import redactedScriptImpl :: forall r. { | r } -> FontConfig

redactedScript :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
redactedScript = redactedScriptImpl
