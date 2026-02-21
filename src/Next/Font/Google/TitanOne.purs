module Next.Font.Google.TitanOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import titanOneImpl :: forall r. { | r } -> FontConfig

titanOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
titanOne = titanOneImpl
