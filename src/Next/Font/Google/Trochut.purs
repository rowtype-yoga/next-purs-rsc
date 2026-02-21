module Next.Font.Google.Trochut where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import trochutImpl :: forall r. { | r } -> FontConfig

trochut :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
trochut = trochutImpl
