module Next.Font.Google.ReemKufiFun where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import reemKufiFunImpl :: forall r. { | r } -> FontConfig

reemKufiFun :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
reemKufiFun = reemKufiFunImpl
