module Next.Font.Google.AmiriQuran where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import amiriQuranImpl :: forall r. { | r } -> FontConfig

amiriQuran :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
amiriQuran = amiriQuranImpl
