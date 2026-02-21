module Next.Font.Google.PlaywriteHUGuides where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import playwriteHUGuidesImpl :: forall r. { | r } -> FontConfig

playwriteHUGuides :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
playwriteHUGuides = playwriteHUGuidesImpl
