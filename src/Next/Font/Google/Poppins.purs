module Next.Font.Google.Poppins where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import poppinsImpl :: forall r. { | r } -> FontConfig

poppins :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
poppins = poppinsImpl
