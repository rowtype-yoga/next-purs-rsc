module Next.Font.Google.Geologica where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import geologicaImpl :: forall r. { | r } -> FontConfig

geologica :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
geologica = geologicaImpl
