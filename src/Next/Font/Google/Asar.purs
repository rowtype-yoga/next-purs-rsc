module Next.Font.Google.Asar where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import asarImpl :: forall r. { | r } -> FontConfig

asar :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
asar = asarImpl
