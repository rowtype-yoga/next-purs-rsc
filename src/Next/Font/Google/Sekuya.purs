module Next.Font.Google.Sekuya where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import sekuyaImpl :: forall r. { | r } -> FontConfig

sekuya :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
sekuya = sekuyaImpl
