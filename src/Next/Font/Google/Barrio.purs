module Next.Font.Google.Barrio where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import barrioImpl :: forall r. { | r } -> FontConfig

barrio :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
barrio = barrioImpl
