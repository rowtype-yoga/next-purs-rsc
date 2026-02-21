module Next.Font.Google.PlaywriteCAGuides where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import playwriteCAGuidesImpl :: forall r. { | r } -> FontConfig

playwriteCAGuides :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
playwriteCAGuides = playwriteCAGuidesImpl
