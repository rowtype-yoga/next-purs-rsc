module Next.Font.Google.Quicksand where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import quicksandImpl :: forall r. { | r } -> FontConfig

quicksand :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
quicksand = quicksandImpl
