module Next.Font.Google.Tirra where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import tirraImpl :: forall r. { | r } -> FontConfig

tirra :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
tirra = tirraImpl
