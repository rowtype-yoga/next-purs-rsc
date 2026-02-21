module Next.Font.Google.FasterOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import fasterOneImpl :: forall r. { | r } -> FontConfig

fasterOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
fasterOne = fasterOneImpl
