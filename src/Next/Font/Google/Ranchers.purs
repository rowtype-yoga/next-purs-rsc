module Next.Font.Google.Ranchers where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import ranchersImpl :: forall r. { | r } -> FontConfig

ranchers :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
ranchers = ranchersImpl
