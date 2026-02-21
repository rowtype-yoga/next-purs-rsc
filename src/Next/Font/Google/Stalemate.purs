module Next.Font.Google.Stalemate where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import stalemateImpl :: forall r. { | r } -> FontConfig

stalemate :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
stalemate = stalemateImpl
