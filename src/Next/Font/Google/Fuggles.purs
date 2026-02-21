module Next.Font.Google.Fuggles where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import fugglesImpl :: forall r. { | r } -> FontConfig

fuggles :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
fuggles = fugglesImpl
