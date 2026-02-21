module Next.Font.Google.MeieScript where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import meieScriptImpl :: forall r. { | r } -> FontConfig

meieScript :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
meieScript = meieScriptImpl
