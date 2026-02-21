module Next.Font.Google.PlaywriteAUVICGuides where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import playwriteAUVICGuidesImpl :: forall r. { | r } -> FontConfig

playwriteAUVICGuides :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
playwriteAUVICGuides = playwriteAUVICGuidesImpl
