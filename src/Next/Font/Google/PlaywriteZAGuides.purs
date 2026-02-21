module Next.Font.Google.PlaywriteZAGuides where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import playwriteZAGuidesImpl :: forall r. { | r } -> FontConfig

playwriteZAGuides :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
playwriteZAGuides = playwriteZAGuidesImpl
