module Next.Font.Google.FjallaOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import fjallaOneImpl :: forall r. { | r } -> FontConfig

fjallaOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
fjallaOne = fjallaOneImpl
