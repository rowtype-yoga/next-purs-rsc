module Next.Font.Google.Platypi where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import platypiImpl :: forall r. { | r } -> FontConfig

platypi :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
platypi = platypiImpl
