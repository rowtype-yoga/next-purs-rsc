module Next.Font.Google.Alkatra where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import alkatraImpl :: forall r. { | r } -> FontConfig

alkatra :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
alkatra = alkatraImpl
