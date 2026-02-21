module Next.Font.Google.Akatab where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import akatabImpl :: forall r. { | r } -> FontConfig

akatab :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
akatab = akatabImpl
