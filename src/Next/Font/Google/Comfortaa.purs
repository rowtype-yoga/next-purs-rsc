module Next.Font.Google.Comfortaa where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import comfortaaImpl :: forall r. { | r } -> FontConfig

comfortaa :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
comfortaa = comfortaaImpl
