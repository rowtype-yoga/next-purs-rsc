module Next.Font.Google.Coiny where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import coinyImpl :: forall r. { | r } -> FontConfig

coiny :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
coiny = coinyImpl
