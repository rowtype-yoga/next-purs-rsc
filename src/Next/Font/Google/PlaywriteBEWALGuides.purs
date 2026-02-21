module Next.Font.Google.PlaywriteBEWALGuides where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import playwriteBEWALGuidesImpl :: forall r. { | r } -> FontConfig

playwriteBEWALGuides :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
playwriteBEWALGuides = playwriteBEWALGuidesImpl
