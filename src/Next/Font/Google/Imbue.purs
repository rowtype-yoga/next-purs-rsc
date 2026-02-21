module Next.Font.Google.Imbue where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import imbueImpl :: forall r. { | r } -> FontConfig

imbue :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
imbue = imbueImpl
