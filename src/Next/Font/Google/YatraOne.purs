module Next.Font.Google.YatraOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import yatraOneImpl :: forall r. { | r } -> FontConfig

yatraOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
yatraOne = yatraOneImpl
