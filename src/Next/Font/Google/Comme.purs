module Next.Font.Google.Comme where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import commeImpl :: forall r. { | r } -> FontConfig

comme :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
comme = commeImpl
