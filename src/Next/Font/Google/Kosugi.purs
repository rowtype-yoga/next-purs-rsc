module Next.Font.Google.Kosugi where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import kosugiImpl :: forall r. { | r } -> FontConfig

kosugi :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
kosugi = kosugiImpl
