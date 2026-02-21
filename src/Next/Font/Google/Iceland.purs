module Next.Font.Google.Iceland where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import icelandImpl :: forall r. { | r } -> FontConfig

iceland :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
iceland = icelandImpl
