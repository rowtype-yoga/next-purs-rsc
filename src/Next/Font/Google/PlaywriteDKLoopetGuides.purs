module Next.Font.Google.PlaywriteDKLoopetGuides where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import playwriteDKLoopetGuidesImpl :: forall r. { | r } -> FontConfig

playwriteDKLoopetGuides :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
playwriteDKLoopetGuides = playwriteDKLoopetGuidesImpl
