module Next.Font.Google.KulimPark where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import kulimParkImpl :: forall r. { | r } -> FontConfig

kulimPark :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
kulimPark = kulimParkImpl
