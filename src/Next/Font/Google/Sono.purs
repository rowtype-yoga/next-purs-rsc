module Next.Font.Google.Sono where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import sonoImpl :: forall r. { | r } -> FontConfig

sono :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
sono = sonoImpl
