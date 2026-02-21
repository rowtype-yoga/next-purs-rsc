module Next.Font.Google.Coustard where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import coustardImpl :: forall r. { | r } -> FontConfig

coustard :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
coustard = coustardImpl
