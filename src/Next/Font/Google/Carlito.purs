module Next.Font.Google.Carlito where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import carlitoImpl :: forall r. { | r } -> FontConfig

carlito :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
carlito = carlitoImpl
