module Next.Font.Google.Righteous where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import righteousImpl :: forall r. { | r } -> FontConfig

righteous :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
righteous = righteousImpl
