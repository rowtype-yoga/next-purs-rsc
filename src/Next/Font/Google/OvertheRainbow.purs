module Next.Font.Google.OvertheRainbow where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import overtheRainbowImpl :: forall r. { | r } -> FontConfig

overtheRainbow :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
overtheRainbow = overtheRainbowImpl
