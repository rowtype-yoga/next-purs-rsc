module Next.Font.Google.PlaywriteHRGuides where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import playwriteHRGuidesImpl :: forall r. { | r } -> FontConfig

playwriteHRGuides :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
playwriteHRGuides = playwriteHRGuidesImpl
