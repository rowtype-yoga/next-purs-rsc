module Next.Font.Google.RougeScript where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import rougeScriptImpl :: forall r. { | r } -> FontConfig

rougeScript :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
rougeScript = rougeScriptImpl
