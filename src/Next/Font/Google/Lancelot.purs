module Next.Font.Google.Lancelot where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import lancelotImpl :: forall r. { | r } -> FontConfig

lancelot :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
lancelot = lancelotImpl
