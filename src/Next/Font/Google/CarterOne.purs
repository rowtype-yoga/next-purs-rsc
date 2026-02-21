module Next.Font.Google.CarterOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import carterOneImpl :: forall r. { | r } -> FontConfig

carterOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
carterOne = carterOneImpl
