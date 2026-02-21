module Next.Font.Google.AguafinaScript where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import aguafinaScriptImpl :: forall r. { | r } -> FontConfig

aguafinaScript :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
aguafinaScript = aguafinaScriptImpl
