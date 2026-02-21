module Next.Font.Google.Parkinsans where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import parkinsansImpl :: forall r. { | r } -> FontConfig

parkinsans :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
parkinsans = parkinsansImpl
