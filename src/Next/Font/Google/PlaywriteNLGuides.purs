module Next.Font.Google.PlaywriteNLGuides where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import playwriteNLGuidesImpl :: forall r. { | r } -> FontConfig

playwriteNLGuides :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
playwriteNLGuides = playwriteNLGuidesImpl
