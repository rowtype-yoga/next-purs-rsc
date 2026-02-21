module Next.Font.Google.DaysOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import daysOneImpl :: forall r. { | r } -> FontConfig

daysOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
daysOne = daysOneImpl
