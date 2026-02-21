module Next.Font.Google.SofadiOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import sofadiOneImpl :: forall r. { | r } -> FontConfig

sofadiOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
sofadiOne = sofadiOneImpl
