module Next.Font.Google.Flavors where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import flavorsImpl :: forall r. { | r } -> FontConfig

flavors :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
flavors = flavorsImpl
