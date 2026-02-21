module Next.Font.Google.DellaRespira where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import dellaRespiraImpl :: forall r. { | r } -> FontConfig

dellaRespira :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
dellaRespira = dellaRespiraImpl
