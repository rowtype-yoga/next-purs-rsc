module Next.Font.Google.Kanchenjunga where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import kanchenjungaImpl :: forall r. { | r } -> FontConfig

kanchenjunga :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
kanchenjunga = kanchenjungaImpl
