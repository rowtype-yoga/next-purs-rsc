module Next.Font.Google.PlaywriteGBSGuides where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import playwriteGBSGuidesImpl :: forall r. { | r } -> FontConfig

playwriteGBSGuides :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
playwriteGBSGuides = playwriteGBSGuidesImpl
