module Next.Font.Google.PlaywriteAUQLDGuides where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import playwriteAUQLDGuidesImpl :: forall r. { | r } -> FontConfig

playwriteAUQLDGuides :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
playwriteAUQLDGuides = playwriteAUQLDGuidesImpl
