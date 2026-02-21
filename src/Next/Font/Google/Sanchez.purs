module Next.Font.Google.Sanchez where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import sanchezImpl :: forall r. { | r } -> FontConfig

sanchez :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
sanchez = sanchezImpl
