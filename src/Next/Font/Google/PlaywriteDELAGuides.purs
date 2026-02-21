module Next.Font.Google.PlaywriteDELAGuides where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import playwriteDELAGuidesImpl :: forall r. { | r } -> FontConfig

playwriteDELAGuides :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
playwriteDELAGuides = playwriteDELAGuidesImpl
