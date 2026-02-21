module Next.Font.Google.Glegoo where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import glegooImpl :: forall r. { | r } -> FontConfig

glegoo :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
glegoo = glegooImpl
