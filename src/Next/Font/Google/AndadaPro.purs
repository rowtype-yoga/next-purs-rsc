module Next.Font.Google.AndadaPro where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import andadaProImpl :: forall r. { | r } -> FontConfig

andadaPro :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
andadaPro = andadaProImpl
