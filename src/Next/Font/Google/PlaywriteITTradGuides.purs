module Next.Font.Google.PlaywriteITTradGuides where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import playwriteITTradGuidesImpl :: forall r. { | r } -> FontConfig

playwriteITTradGuides :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
playwriteITTradGuides = playwriteITTradGuidesImpl
