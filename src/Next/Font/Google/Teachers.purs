module Next.Font.Google.Teachers where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import teachersImpl :: forall r. { | r } -> FontConfig

teachers :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
teachers = teachersImpl
