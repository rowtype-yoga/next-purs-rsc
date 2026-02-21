module Next.Font.Google.Acme where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import acmeImpl :: forall r. { | r } -> FontConfig

acme :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
acme = acmeImpl
