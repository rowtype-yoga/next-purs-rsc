module Next.Font.Google.Sarina where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import sarinaImpl :: forall r. { | r } -> FontConfig

sarina :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
sarina = sarinaImpl
