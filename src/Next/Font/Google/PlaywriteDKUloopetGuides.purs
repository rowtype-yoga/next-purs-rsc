module Next.Font.Google.PlaywriteDKUloopetGuides where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import playwriteDKUloopetGuidesImpl :: forall r. { | r } -> FontConfig

playwriteDKUloopetGuides :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
playwriteDKUloopetGuides = playwriteDKUloopetGuidesImpl
