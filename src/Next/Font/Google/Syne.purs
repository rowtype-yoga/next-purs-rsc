module Next.Font.Google.Syne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import syneImpl :: forall r. { | r } -> FontConfig

syne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
syne = syneImpl
