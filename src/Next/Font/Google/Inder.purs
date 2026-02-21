module Next.Font.Google.Inder where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import inderImpl :: forall r. { | r } -> FontConfig

inder :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
inder = inderImpl
