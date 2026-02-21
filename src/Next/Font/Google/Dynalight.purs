module Next.Font.Google.Dynalight where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import dynalightImpl :: forall r. { | r } -> FontConfig

dynalight :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
dynalight = dynalightImpl
