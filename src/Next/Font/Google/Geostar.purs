module Next.Font.Google.Geostar where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import geostarImpl :: forall r. { | r } -> FontConfig

geostar :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
geostar = geostarImpl
