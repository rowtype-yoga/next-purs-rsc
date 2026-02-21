module Next.Font.Google.PlaywriteCUGuides where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import playwriteCUGuidesImpl :: forall r. { | r } -> FontConfig

playwriteCUGuides :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
playwriteCUGuides = playwriteCUGuidesImpl
