module Next.Font.Google.Spirax where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import spiraxImpl :: forall r. { | r } -> FontConfig

spirax :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
spirax = spiraxImpl
