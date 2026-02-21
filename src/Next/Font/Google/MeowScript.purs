module Next.Font.Google.MeowScript where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import meowScriptImpl :: forall r. { | r } -> FontConfig

meowScript :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
meowScript = meowScriptImpl
