module Next.Font.Google.ReadexPro where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import readexProImpl :: forall r. { | r } -> FontConfig

readexPro :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
readexPro = readexProImpl
