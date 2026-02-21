module Next.Font.Google.OverpassMono where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import overpassMonoImpl :: forall r. { | r } -> FontConfig

overpassMono :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
overpassMono = overpassMonoImpl
