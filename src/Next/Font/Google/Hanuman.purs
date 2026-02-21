module Next.Font.Google.Hanuman where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import hanumanImpl :: forall r. { | r } -> FontConfig

hanuman :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
hanuman = hanumanImpl
