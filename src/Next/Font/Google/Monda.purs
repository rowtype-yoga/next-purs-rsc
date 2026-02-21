module Next.Font.Google.Monda where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import mondaImpl :: forall r. { | r } -> FontConfig

monda :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
monda = mondaImpl
