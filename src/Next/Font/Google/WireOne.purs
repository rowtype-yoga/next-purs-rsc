module Next.Font.Google.WireOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import wireOneImpl :: forall r. { | r } -> FontConfig

wireOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
wireOne = wireOneImpl
