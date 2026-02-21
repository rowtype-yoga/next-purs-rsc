module Next.Font.Google.Aclonica where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import aclonicaImpl :: forall r. { | r } -> FontConfig

aclonica :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
aclonica = aclonicaImpl
