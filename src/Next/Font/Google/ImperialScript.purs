module Next.Font.Google.ImperialScript where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import imperialScriptImpl :: forall r. { | r } -> FontConfig

imperialScript :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
imperialScript = imperialScriptImpl
