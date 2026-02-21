module Next.Font.Google.Karla where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import karlaImpl :: forall r. { | r } -> FontConfig

karla :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
karla = karlaImpl
