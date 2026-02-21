module Next.Font.Google.ExpletusSans where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import expletusSansImpl :: forall r. { | r } -> FontConfig

expletusSans :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
expletusSans = expletusSansImpl
