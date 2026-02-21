module Next.Font.Google.PlaywriteHRLijevaGuides where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import playwriteHRLijevaGuidesImpl :: forall r. { | r } -> FontConfig

playwriteHRLijevaGuides :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
playwriteHRLijevaGuides = playwriteHRLijevaGuidesImpl
