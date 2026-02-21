module Next.Font.Google.Pavanam where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import pavanamImpl :: forall r. { | r } -> FontConfig

pavanam :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
pavanam = pavanamImpl
