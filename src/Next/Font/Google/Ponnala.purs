module Next.Font.Google.Ponnala where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import ponnalaImpl :: forall r. { | r } -> FontConfig

ponnala :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
ponnala = ponnalaImpl
