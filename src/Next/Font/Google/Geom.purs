module Next.Font.Google.Geom where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import geomImpl :: forall r. { | r } -> FontConfig

geom :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
geom = geomImpl
