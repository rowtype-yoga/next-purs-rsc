module Next.Font.Google.PlaywriteDKLoopet where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import playwriteDKLoopetImpl :: forall r. { | r } -> FontConfig

playwriteDKLoopet :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
playwriteDKLoopet = playwriteDKLoopetImpl
