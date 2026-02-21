module Next.Font.Google.Castoro where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import castoroImpl :: forall r. { | r } -> FontConfig

castoro :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
castoro = castoroImpl
