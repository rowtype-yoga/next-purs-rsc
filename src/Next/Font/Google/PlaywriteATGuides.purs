module Next.Font.Google.PlaywriteATGuides where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import playwriteATGuidesImpl :: forall r. { | r } -> FontConfig

playwriteATGuides :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
playwriteATGuides = playwriteATGuidesImpl
