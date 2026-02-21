module Next.Font.Google.CantoraOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import cantoraOneImpl :: forall r. { | r } -> FontConfig

cantoraOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
cantoraOne = cantoraOneImpl
