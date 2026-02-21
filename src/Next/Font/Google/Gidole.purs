module Next.Font.Google.Gidole where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import gidoleImpl :: forall r. { | r } -> FontConfig

gidole :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
gidole = gidoleImpl
