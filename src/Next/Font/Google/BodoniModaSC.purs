module Next.Font.Google.BodoniModaSC where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import bodoniModaSCImpl :: forall r. { | r } -> FontConfig

bodoniModaSC :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
bodoniModaSC = bodoniModaSCImpl
