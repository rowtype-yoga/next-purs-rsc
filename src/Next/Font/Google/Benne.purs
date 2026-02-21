module Next.Font.Google.Benne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import benneImpl :: forall r. { | r } -> FontConfig

benne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
benne = benneImpl
