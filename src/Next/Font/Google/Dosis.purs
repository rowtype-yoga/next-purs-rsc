module Next.Font.Google.Dosis where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import dosisImpl :: forall r. { | r } -> FontConfig

dosis :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
dosis = dosisImpl
