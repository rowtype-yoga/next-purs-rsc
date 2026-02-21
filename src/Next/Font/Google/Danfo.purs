module Next.Font.Google.Danfo where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import danfoImpl :: forall r. { | r } -> FontConfig

danfo :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
danfo = danfoImpl
