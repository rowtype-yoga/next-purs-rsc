module Next.Font.Google.SnowburstOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import snowburstOneImpl :: forall r. { | r } -> FontConfig

snowburstOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
snowburstOne = snowburstOneImpl
