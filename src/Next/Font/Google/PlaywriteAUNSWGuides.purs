module Next.Font.Google.PlaywriteAUNSWGuides where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import playwriteAUNSWGuidesImpl :: forall r. { | r } -> FontConfig

playwriteAUNSWGuides :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
playwriteAUNSWGuides = playwriteAUNSWGuidesImpl
