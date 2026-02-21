module Next.Font.Google.Bahiana where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import bahianaImpl :: forall r. { | r } -> FontConfig

bahiana :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
bahiana = bahianaImpl
