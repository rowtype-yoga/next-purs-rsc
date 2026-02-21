module Next.Font.Google.Average where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import averageImpl :: forall r. { | r } -> FontConfig

average :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
average = averageImpl
