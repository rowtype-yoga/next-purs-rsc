module Next.Font.Google.ClickerScript where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import clickerScriptImpl :: forall r. { | r } -> FontConfig

clickerScript :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
clickerScript = clickerScriptImpl
