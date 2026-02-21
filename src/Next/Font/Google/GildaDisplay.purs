module Next.Font.Google.GildaDisplay where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import gildaDisplayImpl :: forall r. { | r } -> FontConfig

gildaDisplay :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
gildaDisplay = gildaDisplayImpl
