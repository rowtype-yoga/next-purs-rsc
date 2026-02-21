module Next.Font.Google.Grenze where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import grenzeImpl :: forall r. { | r } -> FontConfig

grenze :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
grenze = grenzeImpl
