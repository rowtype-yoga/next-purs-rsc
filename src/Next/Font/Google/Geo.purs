module Next.Font.Google.Geo where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import geoImpl :: forall r. { | r } -> FontConfig

geo :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
geo = geoImpl
