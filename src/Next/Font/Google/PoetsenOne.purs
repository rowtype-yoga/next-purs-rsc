module Next.Font.Google.PoetsenOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import poetsenOneImpl :: forall r. { | r } -> FontConfig

poetsenOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
poetsenOne = poetsenOneImpl
