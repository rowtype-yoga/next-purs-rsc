module Next.Font.Google.Cairo where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import cairoImpl :: forall r. { | r } -> FontConfig

cairo :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
cairo = cairoImpl
