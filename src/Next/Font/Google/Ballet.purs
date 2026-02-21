module Next.Font.Google.Ballet where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import balletImpl :: forall r. { | r } -> FontConfig

ballet :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
ballet = balletImpl
