module Next.Font.Google.Lilex where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import lilexImpl :: forall r. { | r } -> FontConfig

lilex :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
lilex = lilexImpl
