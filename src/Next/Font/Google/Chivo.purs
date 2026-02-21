module Next.Font.Google.Chivo where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import chivoImpl :: forall r. { | r } -> FontConfig

chivo :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
chivo = chivoImpl
