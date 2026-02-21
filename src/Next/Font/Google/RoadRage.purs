module Next.Font.Google.RoadRage where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import roadRageImpl :: forall r. { | r } -> FontConfig

roadRage :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
roadRage = roadRageImpl
