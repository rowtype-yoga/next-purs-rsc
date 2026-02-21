module Next.Font.Google.Carme where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import carmeImpl :: forall r. { | r } -> FontConfig

carme :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
carme = carmeImpl
