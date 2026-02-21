module Next.Font.Google.PlaywriteGBJGuides where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import playwriteGBJGuidesImpl :: forall r. { | r } -> FontConfig

playwriteGBJGuides :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
playwriteGBJGuides = playwriteGBJGuidesImpl
