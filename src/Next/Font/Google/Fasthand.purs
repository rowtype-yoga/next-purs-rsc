module Next.Font.Google.Fasthand where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import fasthandImpl :: forall r. { | r } -> FontConfig

fasthand :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
fasthand = fasthandImpl
