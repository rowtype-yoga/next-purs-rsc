module Next.Font.Google.Rosarivo where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import rosarivoImpl :: forall r. { | r } -> FontConfig

rosarivo :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
rosarivo = rosarivoImpl
