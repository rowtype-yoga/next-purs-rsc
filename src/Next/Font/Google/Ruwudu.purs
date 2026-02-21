module Next.Font.Google.Ruwudu where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import ruwuduImpl :: forall r. { | r } -> FontConfig

ruwudu :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
ruwudu = ruwuduImpl
