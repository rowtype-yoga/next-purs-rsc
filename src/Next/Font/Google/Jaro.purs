module Next.Font.Google.Jaro where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import jaroImpl :: forall r. { | r } -> FontConfig

jaro :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
jaro = jaroImpl
