module Next.Font.Google.Caudex where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import caudexImpl :: forall r. { | r } -> FontConfig

caudex :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
caudex = caudexImpl
