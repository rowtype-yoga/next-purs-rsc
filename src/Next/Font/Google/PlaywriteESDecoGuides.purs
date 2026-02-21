module Next.Font.Google.PlaywriteESDecoGuides where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import playwriteESDecoGuidesImpl :: forall r. { | r } -> FontConfig

playwriteESDecoGuides :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
playwriteESDecoGuides = playwriteESDecoGuidesImpl
