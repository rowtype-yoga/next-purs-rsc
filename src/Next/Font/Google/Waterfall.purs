module Next.Font.Google.Waterfall where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import waterfallImpl :: forall r. { | r } -> FontConfig

waterfall :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
waterfall = waterfallImpl
