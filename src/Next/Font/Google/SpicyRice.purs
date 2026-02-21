module Next.Font.Google.SpicyRice where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import spicyRiceImpl :: forall r. { | r } -> FontConfig

spicyRice :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
spicyRice = spicyRiceImpl
