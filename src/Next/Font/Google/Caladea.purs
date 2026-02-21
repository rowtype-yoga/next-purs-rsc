module Next.Font.Google.Caladea where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import caladeaImpl :: forall r. { | r } -> FontConfig

caladea :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
caladea = caladeaImpl
