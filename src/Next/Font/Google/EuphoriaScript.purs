module Next.Font.Google.EuphoriaScript where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import euphoriaScriptImpl :: forall r. { | r } -> FontConfig

euphoriaScript :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
euphoriaScript = euphoriaScriptImpl
