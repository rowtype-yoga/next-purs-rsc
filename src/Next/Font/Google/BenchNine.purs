module Next.Font.Google.BenchNine where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import benchNineImpl :: forall r. { | r } -> FontConfig

benchNine :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
benchNine = benchNineImpl
