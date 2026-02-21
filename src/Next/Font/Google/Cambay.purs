module Next.Font.Google.Cambay where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import cambayImpl :: forall r. { | r } -> FontConfig

cambay :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
cambay = cambayImpl
