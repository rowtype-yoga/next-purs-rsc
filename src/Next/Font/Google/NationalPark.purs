module Next.Font.Google.NationalPark where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import nationalParkImpl :: forall r. { | r } -> FontConfig

nationalPark :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
nationalPark = nationalParkImpl
