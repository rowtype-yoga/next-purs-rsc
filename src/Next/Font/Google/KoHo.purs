module Next.Font.Google.KoHo where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import koHoImpl :: forall r. { | r } -> FontConfig

koHo :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
koHo = koHoImpl
