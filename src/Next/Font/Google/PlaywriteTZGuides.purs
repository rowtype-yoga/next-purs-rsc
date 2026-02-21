module Next.Font.Google.PlaywriteTZGuides where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import playwriteTZGuidesImpl :: forall r. { | r } -> FontConfig

playwriteTZGuides :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
playwriteTZGuides = playwriteTZGuidesImpl
