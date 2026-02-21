module Next.Font.Google.Laila where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import lailaImpl :: forall r. { | r } -> FontConfig

laila :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
laila = lailaImpl
