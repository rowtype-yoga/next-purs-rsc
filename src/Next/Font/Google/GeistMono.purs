module Next.Font.Google.GeistMono where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import geistMonoImpl :: forall r. { | r } -> FontConfig

geistMono :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
geistMono = geistMonoImpl
