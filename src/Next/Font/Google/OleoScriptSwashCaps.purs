module Next.Font.Google.OleoScriptSwashCaps where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import oleoScriptSwashCapsImpl :: forall r. { | r } -> FontConfig

oleoScriptSwashCaps :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
oleoScriptSwashCaps = oleoScriptSwashCapsImpl
