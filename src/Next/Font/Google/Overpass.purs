module Next.Font.Google.Overpass where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import overpassImpl :: forall r. { | r } -> FontConfig

overpass :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
overpass = overpassImpl
