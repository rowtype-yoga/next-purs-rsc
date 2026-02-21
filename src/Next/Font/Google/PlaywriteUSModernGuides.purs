module Next.Font.Google.PlaywriteUSModernGuides where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import playwriteUSModernGuidesImpl :: forall r. { | r } -> FontConfig

playwriteUSModernGuides :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
playwriteUSModernGuides = playwriteUSModernGuidesImpl
