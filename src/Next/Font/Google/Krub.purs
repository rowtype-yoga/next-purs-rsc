module Next.Font.Google.Krub where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import krubImpl :: forall r. { | r } -> FontConfig

krub :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
krub = krubImpl
