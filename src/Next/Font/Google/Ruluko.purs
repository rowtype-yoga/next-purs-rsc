module Next.Font.Google.Ruluko where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import rulukoImpl :: forall r. { | r } -> FontConfig

ruluko :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
ruluko = rulukoImpl
