module Next.Font.Google.Miniver where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import miniverImpl :: forall r. { | r } -> FontConfig

miniver :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
miniver = miniverImpl
