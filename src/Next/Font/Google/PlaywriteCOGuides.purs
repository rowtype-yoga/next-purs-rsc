module Next.Font.Google.PlaywriteCOGuides where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import playwriteCOGuidesImpl :: forall r. { | r } -> FontConfig

playwriteCOGuides :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
playwriteCOGuides = playwriteCOGuidesImpl
