module Next.Font.Google.Mali where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import maliImpl :: forall r. { | r } -> FontConfig

mali :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
mali = maliImpl
