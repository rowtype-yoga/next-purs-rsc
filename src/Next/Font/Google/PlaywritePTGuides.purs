module Next.Font.Google.PlaywritePTGuides where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import playwritePTGuidesImpl :: forall r. { | r } -> FontConfig

playwritePTGuides :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
playwritePTGuides = playwritePTGuidesImpl
