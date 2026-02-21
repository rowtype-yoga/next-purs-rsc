module Next.Font.Google.PlaywriteDKUloopet where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import playwriteDKUloopetImpl :: forall r. { | r } -> FontConfig

playwriteDKUloopet :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
playwriteDKUloopet = playwriteDKUloopetImpl
