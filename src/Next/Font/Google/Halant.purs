module Next.Font.Google.Halant where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import halantImpl :: forall r. { | r } -> FontConfig

halant :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
halant = halantImpl
