module Next.Font.Google.Quantico where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import quanticoImpl :: forall r. { | r } -> FontConfig

quantico :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
quantico = quanticoImpl
