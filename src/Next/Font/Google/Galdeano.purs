module Next.Font.Google.Galdeano where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import galdeanoImpl :: forall r. { | r } -> FontConfig

galdeano :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
galdeano = galdeanoImpl
