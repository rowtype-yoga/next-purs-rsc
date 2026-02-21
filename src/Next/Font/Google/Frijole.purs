module Next.Font.Google.Frijole where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import frijoleImpl :: forall r. { | r } -> FontConfig

frijole :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
frijole = frijoleImpl
