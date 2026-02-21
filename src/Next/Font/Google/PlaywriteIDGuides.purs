module Next.Font.Google.PlaywriteIDGuides where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import playwriteIDGuidesImpl :: forall r. { | r } -> FontConfig

playwriteIDGuides :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
playwriteIDGuides = playwriteIDGuidesImpl
