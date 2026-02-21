module Next.Font.Google.PlaywriteNGModernGuides where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import playwriteNGModernGuidesImpl :: forall r. { | r } -> FontConfig

playwriteNGModernGuides :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
playwriteNGModernGuides = playwriteNGModernGuidesImpl
