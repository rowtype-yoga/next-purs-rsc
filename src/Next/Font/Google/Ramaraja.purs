module Next.Font.Google.Ramaraja where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import ramarajaImpl :: forall r. { | r } -> FontConfig

ramaraja :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
ramaraja = ramarajaImpl
