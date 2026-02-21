module Next.Font.Google.DancingScript where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import dancingScriptImpl :: forall r. { | r } -> FontConfig

dancingScript :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
dancingScript = dancingScriptImpl
