module Next.Font.Google.BodoniModa where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import bodoniModaImpl :: forall r. { | r } -> FontConfig

bodoniModa :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
bodoniModa = bodoniModaImpl
