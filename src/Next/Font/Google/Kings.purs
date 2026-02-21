module Next.Font.Google.Kings where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import kingsImpl :: forall r. { | r } -> FontConfig

kings :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
kings = kingsImpl
