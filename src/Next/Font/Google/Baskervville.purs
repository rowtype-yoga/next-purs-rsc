module Next.Font.Google.Baskervville where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import baskervvilleImpl :: forall r. { | r } -> FontConfig

baskervville :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
baskervville = baskervvilleImpl
