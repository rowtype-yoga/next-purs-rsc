module Next.Font.Google.PlaywriteISGuides where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import playwriteISGuidesImpl :: forall r. { | r } -> FontConfig

playwriteISGuides :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
playwriteISGuides = playwriteISGuidesImpl
