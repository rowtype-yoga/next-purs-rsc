module Next.Font.Google.Lobster where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import lobsterImpl :: forall r. { | r } -> FontConfig

lobster :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
lobster = lobsterImpl
