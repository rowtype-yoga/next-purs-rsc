module Next.Font.Google.Rosario where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import rosarioImpl :: forall r. { | r } -> FontConfig

rosario :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
rosario = rosarioImpl
