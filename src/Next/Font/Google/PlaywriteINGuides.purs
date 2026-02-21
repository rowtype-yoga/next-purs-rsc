module Next.Font.Google.PlaywriteINGuides where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import playwriteINGuidesImpl :: forall r. { | r } -> FontConfig

playwriteINGuides :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
playwriteINGuides = playwriteINGuidesImpl
