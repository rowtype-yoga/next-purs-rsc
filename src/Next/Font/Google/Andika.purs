module Next.Font.Google.Andika where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import andikaImpl :: forall r. { | r } -> FontConfig

andika :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
andika = andikaImpl
