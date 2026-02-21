module Next.Font.Google.PlaywriteCLGuides where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import playwriteCLGuidesImpl :: forall r. { | r } -> FontConfig

playwriteCLGuides :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
playwriteCLGuides = playwriteCLGuidesImpl
