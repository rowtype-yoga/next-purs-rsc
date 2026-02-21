module Next.Font.Google.Koulen where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import koulenImpl :: forall r. { | r } -> FontConfig

koulen :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
koulen = koulenImpl
