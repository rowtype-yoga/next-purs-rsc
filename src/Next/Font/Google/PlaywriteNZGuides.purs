module Next.Font.Google.PlaywriteNZGuides where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import playwriteNZGuidesImpl :: forall r. { | r } -> FontConfig

playwriteNZGuides :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
playwriteNZGuides = playwriteNZGuidesImpl
