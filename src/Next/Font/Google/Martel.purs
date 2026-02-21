module Next.Font.Google.Martel where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import martelImpl :: forall r. { | r } -> FontConfig

martel :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
martel = martelImpl
