module Next.Font.Google.GravitasOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import gravitasOneImpl :: forall r. { | r } -> FontConfig

gravitasOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
gravitasOne = gravitasOneImpl
