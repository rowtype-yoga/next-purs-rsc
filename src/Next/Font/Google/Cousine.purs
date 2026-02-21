module Next.Font.Google.Cousine where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import cousineImpl :: forall r. { | r } -> FontConfig

cousine :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
cousine = cousineImpl
