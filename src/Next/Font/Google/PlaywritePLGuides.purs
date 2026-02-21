module Next.Font.Google.PlaywritePLGuides where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import playwritePLGuidesImpl :: forall r. { | r } -> FontConfig

playwritePLGuides :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
playwritePLGuides = playwritePLGuidesImpl
