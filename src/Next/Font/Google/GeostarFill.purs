module Next.Font.Google.GeostarFill where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import geostarFillImpl :: forall r. { | r } -> FontConfig

geostarFill :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
geostarFill = geostarFillImpl
