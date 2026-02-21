module Next.Font.Google.ChauPhilomeneOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import chauPhilomeneOneImpl :: forall r. { | r } -> FontConfig

chauPhilomeneOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
chauPhilomeneOne = chauPhilomeneOneImpl
