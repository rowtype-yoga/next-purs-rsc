module Next.Font.Google.Varta where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import vartaImpl :: forall r. { | r } -> FontConfig

varta :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
varta = vartaImpl
