module Next.Font.Google.PlaywriteAUSAGuides where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import playwriteAUSAGuidesImpl :: forall r. { | r } -> FontConfig

playwriteAUSAGuides :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
playwriteAUSAGuides = playwriteAUSAGuidesImpl
