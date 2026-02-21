module Next.Font.Google.Mako where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import makoImpl :: forall r. { | r } -> FontConfig

mako :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
mako = makoImpl
