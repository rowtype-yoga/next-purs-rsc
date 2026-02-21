module Next.Font.Google.PlaywriteESGuides where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import playwriteESGuidesImpl :: forall r. { | r } -> FontConfig

playwriteESGuides :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
playwriteESGuides = playwriteESGuidesImpl
