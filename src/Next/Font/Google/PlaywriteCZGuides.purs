module Next.Font.Google.PlaywriteCZGuides where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import playwriteCZGuidesImpl :: forall r. { | r } -> FontConfig

playwriteCZGuides :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
playwriteCZGuides = playwriteCZGuidesImpl
