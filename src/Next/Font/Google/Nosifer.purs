module Next.Font.Google.Nosifer where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import nosiferImpl :: forall r. { | r } -> FontConfig

nosifer :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
nosifer = nosiferImpl
