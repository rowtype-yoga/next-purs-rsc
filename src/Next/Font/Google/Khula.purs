module Next.Font.Google.Khula where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import khulaImpl :: forall r. { | r } -> FontConfig

khula :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
khula = khulaImpl
