module Next.Font.Google.PlaywriteDEVAGuides where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import playwriteDEVAGuidesImpl :: forall r. { | r } -> FontConfig

playwriteDEVAGuides :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
playwriteDEVAGuides = playwriteDEVAGuidesImpl
