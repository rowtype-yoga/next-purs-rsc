module Next.Font.Google.PlaywriteVNGuides where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import playwriteVNGuidesImpl :: forall r. { | r } -> FontConfig

playwriteVNGuides :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
playwriteVNGuides = playwriteVNGuidesImpl
