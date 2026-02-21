module Next.Font.Google.Ultra where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import ultraImpl :: forall r. { | r } -> FontConfig

ultra :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
ultra = ultraImpl
