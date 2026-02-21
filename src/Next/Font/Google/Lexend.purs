module Next.Font.Google.Lexend where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import lexendImpl :: forall r. { | r } -> FontConfig

lexend :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
lexend = lexendImpl
