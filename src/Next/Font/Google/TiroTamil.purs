module Next.Font.Google.TiroTamil where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import tiroTamilImpl :: forall r. { | r } -> FontConfig

tiroTamil :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
tiroTamil = tiroTamilImpl
