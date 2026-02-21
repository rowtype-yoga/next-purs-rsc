module Next.Font.Google.PlaywriteBEVLGGuides where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import playwriteBEVLGGuidesImpl :: forall r. { | r } -> FontConfig

playwriteBEVLGGuides :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
playwriteBEVLGGuides = playwriteBEVLGGuidesImpl
