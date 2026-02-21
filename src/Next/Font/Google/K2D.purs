module Next.Font.Google.K2D where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import k2DImpl :: forall r. { | r } -> FontConfig

k2D :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
k2D = k2DImpl
