module Next.Font.Google.PlaywriteARGuides where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import playwriteARGuidesImpl :: forall r. { | r } -> FontConfig

playwriteARGuides :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
playwriteARGuides = playwriteARGuidesImpl
