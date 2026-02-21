module Next.Font.Google.Marhey where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import marheyImpl :: forall r. { | r } -> FontConfig

marhey :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
marhey = marheyImpl
