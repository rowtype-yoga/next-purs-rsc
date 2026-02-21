module Next.Font.Google.Amiri where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import amiriImpl :: forall r. { | r } -> FontConfig

amiri :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
amiri = amiriImpl
