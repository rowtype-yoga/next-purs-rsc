module Next.Font.Google.Molle where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import molleImpl :: forall r. { | r } -> FontConfig

molle :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
molle = molleImpl
