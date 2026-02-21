module Next.Font.Google.TulpenOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import tulpenOneImpl :: forall r. { | r } -> FontConfig

tulpenOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
tulpenOne = tulpenOneImpl
