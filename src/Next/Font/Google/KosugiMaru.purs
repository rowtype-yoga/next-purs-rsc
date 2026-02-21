module Next.Font.Google.KosugiMaru where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import kosugiMaruImpl :: forall r. { | r } -> FontConfig

kosugiMaru :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
kosugiMaru = kosugiMaruImpl
