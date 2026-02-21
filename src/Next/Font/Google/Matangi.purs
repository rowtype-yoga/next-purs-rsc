module Next.Font.Google.Matangi where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import matangiImpl :: forall r. { | r } -> FontConfig

matangi :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
matangi = matangiImpl
