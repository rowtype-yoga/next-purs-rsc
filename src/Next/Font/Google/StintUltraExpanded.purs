module Next.Font.Google.StintUltraExpanded where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import stintUltraExpandedImpl :: forall r. { | r } -> FontConfig

stintUltraExpanded :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
stintUltraExpanded = stintUltraExpandedImpl
