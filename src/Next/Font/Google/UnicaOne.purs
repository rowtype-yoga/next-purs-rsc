module Next.Font.Google.UnicaOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import unicaOneImpl :: forall r. { | r } -> FontConfig

unicaOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
unicaOne = unicaOneImpl
