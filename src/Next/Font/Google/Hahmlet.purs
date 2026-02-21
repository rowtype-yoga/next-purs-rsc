module Next.Font.Google.Hahmlet where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import hahmletImpl :: forall r. { | r } -> FontConfig

hahmlet :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
hahmlet = hahmletImpl
