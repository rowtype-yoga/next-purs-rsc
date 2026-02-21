module Next.Font.Google.Orienta where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import orientaImpl :: forall r. { | r } -> FontConfig

orienta :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
orienta = orientaImpl
