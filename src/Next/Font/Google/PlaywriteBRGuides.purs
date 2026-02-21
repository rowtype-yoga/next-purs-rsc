module Next.Font.Google.PlaywriteBRGuides where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import playwriteBRGuidesImpl :: forall r. { | r } -> FontConfig

playwriteBRGuides :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
playwriteBRGuides = playwriteBRGuidesImpl
