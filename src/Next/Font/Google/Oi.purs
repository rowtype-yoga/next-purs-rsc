module Next.Font.Google.Oi where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import oiImpl :: forall r. { | r } -> FontConfig

oi :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
oi = oiImpl
