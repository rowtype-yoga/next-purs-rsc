module Next.Font.Google.Geist where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import geistImpl :: forall r. { | r } -> FontConfig

geist :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
geist = geistImpl
