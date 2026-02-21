module Next.Font.Google.Mirza where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import mirzaImpl :: forall r. { | r } -> FontConfig

mirza :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
mirza = mirzaImpl
