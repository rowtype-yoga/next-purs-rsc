module Next.Font.Google.Dekko where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import dekkoImpl :: forall r. { | r } -> FontConfig

dekko :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
dekko = dekkoImpl
