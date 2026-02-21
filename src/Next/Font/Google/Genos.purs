module Next.Font.Google.Genos where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import genosImpl :: forall r. { | r } -> FontConfig

genos :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
genos = genosImpl
