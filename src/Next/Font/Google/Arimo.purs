module Next.Font.Google.Arimo where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import arimoImpl :: forall r. { | r } -> FontConfig

arimo :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
arimo = arimoImpl
