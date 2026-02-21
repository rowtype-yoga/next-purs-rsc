module Next.Font.Google.SeaweedScript where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import seaweedScriptImpl :: forall r. { | r } -> FontConfig

seaweedScript :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
seaweedScript = seaweedScriptImpl
