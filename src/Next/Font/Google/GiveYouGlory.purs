module Next.Font.Google.GiveYouGlory where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import giveYouGloryImpl :: forall r. { | r } -> FontConfig

giveYouGlory :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
giveYouGlory = giveYouGloryImpl
