module Next.Font.Google.PlaywriteFRTrad where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import playwriteFRTradImpl :: forall r. { | r } -> FontConfig

playwriteFRTrad :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
playwriteFRTrad = playwriteFRTradImpl
