module Next.Font.Google.PlaywriteFRTradGuides where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import playwriteFRTradGuidesImpl :: forall r. { | r } -> FontConfig

playwriteFRTradGuides :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
playwriteFRTradGuides = playwriteFRTradGuidesImpl
