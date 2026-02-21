module Next.Font.Google.PlaywriteROGuides where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import playwriteROGuidesImpl :: forall r. { | r } -> FontConfig

playwriteROGuides :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
playwriteROGuides = playwriteROGuidesImpl
