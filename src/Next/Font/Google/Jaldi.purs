module Next.Font.Google.Jaldi where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import jaldiImpl :: forall r. { | r } -> FontConfig

jaldi :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
jaldi = jaldiImpl
