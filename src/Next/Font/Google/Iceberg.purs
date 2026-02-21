module Next.Font.Google.Iceberg where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import icebergImpl :: forall r. { | r } -> FontConfig

iceberg :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
iceberg = icebergImpl
