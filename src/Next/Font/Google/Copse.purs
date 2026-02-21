module Next.Font.Google.Copse where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import copseImpl :: forall r. { | r } -> FontConfig

copse :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
copse = copseImpl
